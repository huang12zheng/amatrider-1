library send_package_cubit.dart;

import 'dart:async' show StreamSubscription;
import 'dart:convert' show jsonDecode;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/managers/managers.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/data/repositories/laravel_echo_repository.dart';
import 'package:amatrider/features/home/data/repositories/logistics/logistics_repository.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/domain/repositories/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'send_package_cubit.freezed.dart';
part 'send_package_state.dart';

@injectable
class SendPackageCubit extends Cubit<SendPackageState> with BaseCubit<SendPackageState> {
  final EchoRepository _echoRepository;
  final LocationService _locationService;
  bool isFirstLocationUpdate = true;
  StreamSubscription<Either<AnyResponse, RiderLocation?>>? _locationSubscription;

  final LogisticsRepository _logisticsRepository;

  SendPackageCubit(
    this._logisticsRepository,
    this._echoRepository,
    this._locationService,
  ) : super(SendPackageState.initial());

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading, status: status ?? state.status));

  @override
  Future<void> close() async {
    closeWebsocket();
    await _locationSubscription?.cancel();
    _locationSubscription = null;
    return super.close();
  }

  void init(Logistics deliverable, BuildContext ctx) async {
    emit(state.copyWith(isLoadingSingle: true, deliverable: deliverable));

    echo();

    await BlocProvider.of<LocationCubit>(ctx).getRiderLocation(ctx, callback: (r) async {
      final result = await _logisticsRepository.single(deliverable, lat: '${r.lat.getOrNull}', lng: '${r.lng.getOrNull}');

      result.fold(
        (e) => emit(state.copyWith(isLoadingSingle: false, status: optionOf(e))),
        (value) => emit(state.copyWith(isLoadingSingle: false, deliverable: value)),
      );
    });
  }

  void cancelReasonChanged(String? reason, [bool isOther = false]) =>
      emit(state.copyWith(cancelReason: BasicTextField(reason), isOtherReason: isOther));

  void resetIssueSheet() {
    emit(state.copyWith(isOtherReason: true, cancelReason: BasicTextField(null)));
  }

  void closeWebsocket() {
    if (state.deliverable?.id.value != null) {
      state.deliverable?.type.when(
        order: () => _echoRepository.leave(
          DeliverableEvents.orderChannel('${state.deliverable?.id.value}'),
          event: DeliverableEvents.orderEvent,
        ),
        package: () => _echoRepository.leave(
          DeliverableEvents.packageChannel('${state.deliverable?.id.value}'),
          event: DeliverableEvents.packageEvent,
        ),
      );
    }
  }

  void codeChanged(String? value, [bool fresh = false]) =>
      emit(state.copyWith(code: BasicTextField(value), validate: fresh ? false : state.validate));

  void updateRiderLocation(BuildContext context) async {
    final _locationCubit = BlocProvider.of<LocationCubit>(context);
    final _mapCubit = BlocProvider.of<MapCubit>(context);

    // Set initial location update
    await _locationCubit.getRiderLocation(context, callback: (location) async {
      await _mapCubit.updateCurrentLocation(context, location);

      await _logisticsRepository.updateLocation(state.deliverable!, location: location);
    });
  }

  void liveLocationUpdates(BuildContext context) async {
    final _locationCubit = BlocProvider.of<LocationCubit>(context);

    updateRiderLocation(context);

    // Request background location
    await _locationCubit.request(context, background: true, awaitBackground: true);

    _locationSubscription ??= (await _locationService.changeSettings()).liveLocation().listen(
      (result) async {
        // Clear all errors
        emit(state.copyWith(status: none()));

        result.fold(
          (failure) => emit(state.copyWith(status: optionOf(AppHttpResponse(failure)))),
          (location) async {
            final result = await _logisticsRepository.updateLocation(state.deliverable!, location: location);

            result.response.mapOrNull(error: (_) => emit(state.copyWith(status: optionOf(result))));
          },
        );
      },
    );
  }

  void echo() async {
    state.deliverable?.type.when(
      order: () => _echoRepository.public(
        DeliverableEvents.orderChannel(state.deliverable!.id.value!),
        DeliverableEvents.orderEvent,
        onData: (data, _this) => _mapDeliverableUpdates(data),
      ),
      package: () => _echoRepository.private(
        DeliverableEvents.packageChannel(state.deliverable!.id.value!),
        DeliverableEvents.packageEvent,
        onData: (data, _this) => _mapDeliverableUpdates(data),
      ),
    );
  }

  void _mapDeliverableUpdates(String data) {
    final json = jsonDecode(data) as Map<String, dynamic>;
    final result = LogisticsDTO.fromJson(json);

    JourneyDetailDTO? journeyDTO;
    if (json.containsKey('journeyDetails') && json['journeyDetails'] != null)
      journeyDTO = JourneyDetailDTO.fromJson(json['journeyDetails'] as Map<String, dynamic>);

    result.deliverable?.type.when(
      order: () {
        final newOrder = result.userOrder?.id.value != null ? result.userOrder : result.order?.orderData?.domain;

        final merged = (state.deliverable as UserOrder).merge(newOrder?.copyWith(
          journey: journeyDTO?.domain ?? state.deliverable!.journey!,
        ));

        emit(state.copyWith(deliverable: merged));
      },
      package: () {
        final newPackage = result.sendPackage?.id.value != null ? result.sendPackage : result.package?.packageData?.domain;

        final merged = (state.deliverable as SendPackage).merge(newPackage?.copyWith(
          journey: journeyDTO?.domain ?? state.deliverable!.journey!,
        ));

        emit(state.copyWith(deliverable: merged));
      },
    );
  }

  void confirmPickup(BuildContext ctx, void Function() callback) async {
    emit(state.copyWith(isConfirmingPickup: true, validate: true, status: none()));

    if (state.code.isValid) {
      callback.call();

      await BlocProvider.of<LocationCubit>(ctx).getRiderLocation(ctx, callback: (location) async {
        final _result = await _logisticsRepository.confirmPickup(
          state.deliverable!,
          lat: '${location.lat.getOrNull}',
          lng: '${location.lng.getOrNull}',
          token: '${state.code.getOrNull}',
        );

        emit(state.copyWith(status: some(_result), validate: false, isConfirmingPickup: false));
      });
    } else
      emit(state.copyWith(isConfirmingPickup: false));
  }

  void confirmDelivery(
    BuildContext ctx,
    void Function() callback, [
    void Function(Logistics)? onDelivered,
  ]) async {
    emit(state.copyWith(isConfirmingDelivery: true, validate: true, status: none()));

    if (state.code.isValid || state.deliverable!.contactlessDelivery) {
      callback.call();

      await BlocProvider.of<LocationCubit>(ctx).getRiderLocation(ctx, callback: (location) async {
        final _result = await _logisticsRepository.confirmDelivery(
          state.deliverable!,
          lat: '${location.lat.getOrNull}',
          lng: '${location.lng.getOrNull}',
          token: '${state.code.getOrNull}',
        );

        _result.response.mapOrNull(
          success: (_) {
            final value = state.deliverable?.type.when(
              order: () => (state.deliverable as UserOrder).copyWith(status: ParcelStatus.DELIVERED),
              package: () => (state.deliverable as SendPackage).copyWith(status: ParcelStatus.DELIVERED),
            );

            emit(state.copyWith(deliverable: value));

            onDelivered?.call(value!);
          },
        );

        emit(state.copyWith(
          validate: false,
          isConfirmingDelivery: false,
          status: some(_result.copyWith.response.call(pop: true)),
        ));
      });
    } else
      emit(state.copyWith(isConfirmingDelivery: false));
  }

  void alertArrival(Logistics deliverable, [String? name]) async {
    emit(state.copyWith(isLoading: true, status: none()));

    final result = await _logisticsRepository.alertArrival(state.deliverable!, name);

    emit(state.copyWith(isLoading: false, status: some(result)));
  }
}
