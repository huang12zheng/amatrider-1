library send_package_cubit.dart;

import 'dart:async' show StreamSubscription;
import 'dart:convert' show jsonDecode;

import 'package:amatrider/core/data/http_client/index.dart';
import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/data/websocket_events.dart';
import 'package:amatrider/core/presentation/managers/managers.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/data/repositories/laravel_echo_repository.dart';
import 'package:amatrider/features/home/data/repositories/logistics/logistics_repository.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/domain/repositories/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/utils/utils.dart';
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
  StreamSubscription<Either<AnyResponse, RiderLocation?>>?
      _locationSubscription;

  final LogisticsRepository _logisticsRepository;

  SendPackageCubit(
    this._logisticsRepository,
    this._echoRepository,
    this._locationService,
  ) : super(SendPackageState.initial());

  @override
  Future<void> close() async {
    _echoRepository.stopListening(
      SendPackageSocket.channel(state.package.id.value!),
      SendPackageSocket.location,
    );
    _echoRepository.close(
      SendPackageSocket.channel(state.package.id.value!),
      nullify: true,
    );
    await _locationSubscription?.cancel();
    _locationSubscription = null;
    return super.close();
  }

  void init(SendPackage package) => emit(state.copyWith(package: package));

  void startTracker([BuildContext? c]) async {
    if (c == null)
      log.e('No BuildContext passed to the "startTracker" method!');
    else {
      final _locationCubit = BlocProvider.of<LocationCubit>(c);
      await _locationCubit.request(c, background: true);
    }

    await _locationSubscription?.cancel();
    _locationSubscription ??=
        (await _locationService.changeSettings()).liveLocation().listen(
      (result) {
        result.fold(
          (failure) => emit(state.copyWith(
            status: optionOf(AppHttpResponse(failure)),
          )),
          (location) async {
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
    _echoRepository.private(
      SendPackageSocket.channel(state.package.id.value!),
      SendPackageSocket.location,
      onData: (data, _this) {
        final json = jsonDecode(data) as Map<String, dynamic>;
        final result = SendPackageDTO.fromJson(json);

        final journey = result.journey?.domain;
        final newPackage =
            result.id != null ? result.domain : result.packageData?.domain;

        emit(state.copyWith(
          journey: journey ?? state.journey,
          package: state.package.merge(newPackage),
        ));
      },
    );
  }

  void confirmPackagePickup() async {}

  void confirmPackageDelivery() async {}
}
