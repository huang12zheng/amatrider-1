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

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
        status: status ?? state.status,
      ));

  @override
  Future<void> close() async {
    closeWebsocket();
    await _locationSubscription?.cancel();
    _locationSubscription = null;
    return super.close();
  }

  void init(SendPackage package) => emit(state.copyWith(package: package));

  void cancelReasonChanged(String? reason, [bool isOther = false]) =>
      emit(state.copyWith(cancelReason: BasicTextField(reason), isOtherReason: isOther));

  void resetIssueSheet() {
    emit(state.copyWith(
      isOtherReason: true,
      cancelReason: BasicTextField(null),
    ));
  }

  void closeWebsocket() {
    if (state.package.id.value != null) {
      _echoRepository.stopListening(
        SendPackageEvents.channel('${state.package.id.value}'),
        SendPackageEvents.location,
      );
      _echoRepository.stopListening(
        SendPackageEvents.channel('${state.package.id.value}'),
        SendPackageEvents.received,
      );
      _echoRepository.stopListening(
        SendPackageEvents.channel('${state.package.id.value}'),
        SendPackageEvents.delivered,
      );

      // _echoRepository.close(
      //   SendPackageEvents.channel('${state.package.id.value}'),
      //   nullify: true,
      // );
    }
  }

  void track(BuildContext c) async {
    final _locationCubit = BlocProvider.of<LocationCubit>(c);
    await _locationCubit.request(c, background: true);

    await _locationSubscription?.cancel();
    _locationSubscription ??= (await _locationService.changeSettings()).liveLocation().listen(
      (result) {
        // Clear all errors
        emit(state.copyWith(status: none()));

        result.fold(
          (failure) => emit(state.copyWith(
            status: optionOf(AppHttpResponse(failure)),
          )),
          (location) async {
            final _mapCubit = BlocProvider.of<MapCubit>(c);
            await _mapCubit.updateCurrentLocation(location, c, isFirstLocationUpdate);
            isFirstLocationUpdate = false;

            try {
              final _conn = await connection();

              await _conn.fold(
                () async {
                  await _logisticsRepository.updateLocation(
                    '${state.package.id.value}',
                    location: RiderLocationDTO.fromDomain(location),
                  );
                },
                (e) async => emit(state.copyWith(status: optionOf(e))),
              );
            } on AppHttpResponse catch (e) {
              emit(state.copyWith(status: optionOf(e)));
            } on AppNetworkException catch (e) {
              emit(state.copyWith(status: optionOf(e.asResponse())));
            }
          },
        );
      },
    );
  }

  void echo() async {
    _echoRepository.channel(SendPackageEvents.channel(state.package.id.value!));

    _echoRepository.listen(
      SendPackageEvents.location,
      onData: (data, _this) => mapDataToState(data),
    );

    _echoRepository.listen(
      SendPackageEvents.received,
      onData: (data, _this) => mapDataToState(data),
    );

    _echoRepository.listen(
      SendPackageEvents.delivered,
      onData: (data, _this) => mapDataToState(data),
    );
  }

  void mapDataToState(String data) {
    final json = jsonDecode(data) as Map<String, dynamic>;
    final result = SendPackageDTO.fromJson(json);

    final journey = result.journey?.domain;
    final newPackage = result.id != null ? result.domain : result.packageData?.domain;

    emit(state.copyWith(
      journey: journey ?? state.journey,
      package: state.package.merge(newPackage),
    ));
  }

  void confirmPackagePickup() async {
    toggleLoading(true, none());

    try {
      final _conn = await connection();

      await _conn.fold(
        () async {
          final _either = await _locationService.getLocation();

          await _either.fold(
            (e) async => emit(state.copyWith(status: optionOf(AppHttpResponse(e)))),
            (location) async {
              final _result = await _logisticsRepository.confirmPackageReceived(
                '${state.package.id.value}',
                lat: '${location?.lat.getOrNull}',
                lng: '${location?.lng.getOrNull}',
              );

              emit(state.copyWith(status: some(_result)));
            },
          );
        },
        (e) async => emit(state.copyWith(status: optionOf(e))),
      );
    } on AppNetworkException catch (e) {
      emit(state.copyWith(status: some(e.asResponse())));
    }

    toggleLoading(false);
  }

  void confirmPackageDelivery() async {
    toggleLoading(true, none());

    try {
      final _conn = await connection();

      await _conn.fold(
        () async {
          final _either = await _locationService.getLocation();

          await _either.fold(
            (e) async => emit(state.copyWith(status: optionOf(AppHttpResponse(e)))),
            (location) async {
              final _result = await _logisticsRepository.confirmPackageDelivered(
                '${state.package.id.value}',
                lat: '${location?.lat.getOrNull}',
                lng: '${location?.lng.getOrNull}',
              );

              _result.response.mapOrNull(
                success: (_) {
                  emit(state.copyWith.package.call(
                    status: SendPackageStatus.DELIVERED,
                  ));
                },
              );

              emit(state.copyWith(
                status: some(_result.copyWith.response.call(pop: true)),
              ));
            },
          );
        },
        (e) async => emit(state.copyWith(status: optionOf(e))),
      );
    } on AppNetworkException catch (e) {
      emit(state.copyWith(status: some(e.asResponse())));
    }

    toggleLoading(false);
  }

  void cancelDelivery() async {
    toggleLoading(true, none());

    try {
      final _conn = await connection();

      await _conn.fold(
        () async {
          emit(state.copyWith(
            status: some(AppHttpResponse.successful('Delivery cancelled!')),
          ));
        },
        (e) async => emit(state.copyWith(status: optionOf(e))),
      );
    } on AppNetworkException catch (e) {
      emit(state.copyWith(status: some(e.asResponse())));
    }

    toggleLoading(false);
  }
}
