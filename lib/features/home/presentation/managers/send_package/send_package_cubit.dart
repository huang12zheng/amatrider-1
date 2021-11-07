library send_package_cubit.dart;

import 'dart:async' show StreamSubscription;
import 'dart:convert' show jsonDecode;

import 'package:amatrider/core/data/http_client/index.dart';
import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/data/websocket_events.dart';
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
class SendPackageCubit extends Cubit<SendPackageState>
    with BaseCubit<SendPackageState> {
  final LaravelEchoRepository _echoRepository;
  final LocationService _locationService;
  bool isFirstLocationUpdate = true;
  StreamSubscription<Either<AnyResponse, RiderLocation?>>?
      _locationSubscription;

  final LogisticsRepository _logisticsRepository;

  SendPackageCubit(
    this._logisticsRepository,
    this._echoRepository,
    this._locationService,
  ) : super(SendPackageState.initial());

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
        status: status ?? state.status,
      ));

  @override
  Future<void> close() async {
    if (state.package.id.value != null) {
      _echoRepository.stopListening(
        SendPackageSocket.channel(state.package.id.value!),
        SendPackageSocket.location,
      );
      _echoRepository.stopListening(
        SendPackageSocket.channel(state.package.id.value!),
        SendPackageSocket.received,
      );
      _echoRepository.stopListening(
        SendPackageSocket.channel(state.package.id.value!),
        SendPackageSocket.delivered,
      );
      _echoRepository.close(
        SendPackageSocket.channel(state.package.id.value!),
        nullify: true,
      );
    }
    await _locationSubscription?.cancel();
    _locationSubscription = null;
    return super.close();
  }

  void init(SendPackage package) => emit(state.copyWith(package: package));

  void cancelReasonChanged(String? reason, [bool isOther = false]) => emit(state
      .copyWith(cancelReason: BasicTextField(reason), isOtherReason: isOther));

  void startTracker(BuildContext c) async {
    final _locationCubit = BlocProvider.of<LocationCubit>(c);
    await _locationCubit.request(c, background: true);

    await _locationSubscription?.cancel();
    _locationSubscription ??=
        (await _locationService.changeSettings()).liveLocation().listen(
      (result) {
        // Clear all errors
        emit(state.copyWith(status: none()));

        result.fold(
          (failure) => emit(state.copyWith(
            status: optionOf(AppHttpResponse(failure)),
          )),
          (location) async {
            final _mapCubit = BlocProvider.of<MapCubit>(c);
            await _mapCubit.updateCurrentLocation(
                location, c, isFirstLocationUpdate);
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

  void startWebsocket() async {
    _echoRepository.channel(SendPackageSocket.channel(state.package.id.value!));

    _echoRepository.listen(
      SendPackageSocket.location,
      onData: (data, _this) {
        mapDataToState(data);
      },
    );

    _echoRepository.listen(
      SendPackageSocket.received,
      onData: (data, _this) {
        mapDataToState(data);

        _this.stopListening(SendPackageSocket.channel(state.package.id.value!),
            SendPackageSocket.received);
      },
    );

    _echoRepository.listen(
      SendPackageSocket.delivered,
      onData: (data, _this) {
        mapDataToState(data);

        _this.stopListening(SendPackageSocket.channel(state.package.id.value!),
            SendPackageSocket.delivered);
      },
    );
  }

  void mapDataToState(String data) {
    final json = jsonDecode(data) as Map<String, dynamic>;
    final result = SendPackageDTO.fromJson(json);

    final journey = result.journey?.domain;
    final newPackage =
        result.id != null ? result.domain : result.packageData?.domain;

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
            (e) async =>
                emit(state.copyWith(status: optionOf(AppHttpResponse(e)))),
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
            (e) async =>
                emit(state.copyWith(status: optionOf(AppHttpResponse(e)))),
            (location) async {
              final _result =
                  await _logisticsRepository.confirmPackageDelivered(
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
