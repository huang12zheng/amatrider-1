library request_cubit.dart;

import 'dart:convert';

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/managers/managers.dart';
import 'package:amatrider/features/auth/domain/index.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/data/repositories/laravel_echo_repository.dart';
import 'package:amatrider/features/home/data/repositories/logistics/logistics_repository.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'request_cubit.freezed.dart';
part 'request_state.dart';

@injectable
class RequestCubit extends Cubit<RequestState> with BaseCubit<RequestState> {
  final AuthFacade _auth;
  final EchoRepository _echoRepository;
  final LogisticsRepository _logisticsRepository;

  String? riderId;

  RequestCubit(
    this._auth,
    this._logisticsRepository,
    this._echoRepository,
  ) : super(RequestState.initial());

  @override
  Future<void> close() {
    _echoRepository.stopListening(RequestEvents.packageAcceptedChannel, RequestEvents.packageAcceptedEvent);
    if (riderId != null) {
      _echoRepository.stopListening(RequestEvents.packageDeliveredChannel('$riderId'), RequestEvents.packageDeliveredEvent);
      _echoRepository.close(RequestEvents.newRequestChannel('$riderId'));
    }
    return super.close();
  }

  // void _toggleLoading([bool? isLoading]) =>
  //     emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  void clearList() => emit(state.copyWith(
        activePackages: const KtList.empty(),
        packagesInTransit: const KtList.empty(),
        potentialPackages: const KtList.empty(),
        currentPackage: null,
      ));

  void setCurrentPackage(SendPackage? package) {
    if (package != null && riderId != null) {
      getIt<EchoRepository>().channel(RequestEvents.packageDeliveredChannel('$riderId')).listen(RequestEvents.packageDeliveredEvent,
          onData: (data, _this) {
        final json = jsonDecode(data) as Map<String, dynamic>;
        final result = SendPackageDTO.fromJson(json);

        final _delivered = result.id != null ? result.domain : result.packageData?.domain;

        final _match = state.packagesInTransit.firstOrNull((it) => it.id == _delivered?.id);

        if (_match != null)
          emit(state.copyWith(
            packagesInTransit: state.packagesInTransit.minusElement(_match),
          ));
      });
    }

    emit(state.copyWith(currentPackage: package));
  }

  void _updateActivePackages({
    KtList<SendPackage>? active,
    SendPackage? package,
  }) {
    if (active != null)
      emit(state.copyWith(
        activePackages: active.sortedWith(
          (a, b) => b.createdAt!.compareTo(a.createdAt!),
        ),
      ));
    if (package != null && !state.activePackages.contains(package))
      emit(state.copyWith(
        activePackages: state.activePackages.plusElement(package).sortedWith((a, b) => b.createdAt!.compareTo(a.createdAt!)),
      ));
  }

  void _updatePackagesInTransit({
    KtList<SendPackage>? inTransit,
    SendPackage? package,
  }) {
    if (inTransit != null)
      emit(state.copyWith(
        packagesInTransit: inTransit.sortedWith(
          (a, b) => b.createdAt!.compareTo(a.createdAt!),
        ),
      ));
    if (package != null && !state.packagesInTransit.contains(package))
      emit(state.copyWith(
        packagesInTransit: state.packagesInTransit.plusElement(package).sortedWith((a, b) => b.createdAt!.compareTo(a.createdAt!)),
      ));
  }

  void echo() async {
    final _result = await _auth.rider;

    _result.fold(
      () => null,
      (account) {
        riderId = account!.uid.value!;

        _echoRepository.private(
          RequestEvents.newRequestChannel('$riderId'),
          RequestEvents.newRequestEvent,
          onData: (data, _) {
            final json = jsonDecode(data) as Map<String, dynamic>;
            final title = json.containsKey('title') ? json['title'] as String : null;

            if (title != null)
              emit(state.copyWith(
                status: some(AppHttpResponse.successful(
                  title,
                  pop: false,
                  uuid: UniqueId<String>.v4().value,
                )),
              ));

            final package = SendPackageDTO.fromJson(json);

            _updateActivePackages(package: package.packageData?.domain);
          },
        );

        _echoRepository.public(
          RequestEvents.packageAcceptedChannel,
          RequestEvents.packageAcceptedEvent,
          onData: (data, _) {
            final json = jsonDecode(data) as Map<String, dynamic>;
            final package = SendPackageDTO.fromJson(json);

            if (package.packageData?.riderId == riderId) {
              // Update in transit
              _updatePackagesInTransit(package: package.packageData?.domain);
              // Set current
              setCurrentPackage(package.packageData?.domain);

              emit(state.copyWith(isAccepting: false));
            }
          },
        );
      },
    );
  }

  Future<void> _checkWasUpdatedRecently(BuildContext c, void Function(RiderLocation) callback) async {
    final _locationCubit = BlocProvider.of<LocationCubit>(c);

    if (_locationCubit.wasUpdatedRecently) {
      final _location = _locationCubit.state.position;
      callback.call(_location!);
    } else {
      await _locationCubit.getRiderLocation(c, callback: callback);
    }
  }

  Future<void> allPackages(
    BuildContext c, {
    SendPackageStatus status = SendPackageStatus.ACTIVE,
    RiderLocation? location,
  }) async {
    await _checkWasUpdatedRecently(c, (location) async {
      emit(state.copyWith(
        isLoading: true,
        isLoadingTransitPackages: true,
        isLoadingActivePackages: true,
        status: none(),
      ));

      final _result = await _logisticsRepository.allRequests(
        status: status,
        lat: '${location.lat.getOrEmpty}',
        lng: '${location.lng.getOrEmpty}',
      );

      _result.fold(
        (e) => status.maybeWhen(
          active: () => emit(state.copyWith(
            status: optionOf(e),
            isLoadingActivePackages: false,
          )),
          enroute: () => emit(state.copyWith(
            status: optionOf(e),
            isLoadingTransitPackages: false,
            isLoadingActivePackages: false,
          )),
          orElse: () => null,
        ),
        (list) {
          status.maybeWhen(
            active: () {
              emit(state.copyWith(isLoadingActivePackages: false));
              _updateActivePackages(active: list.domain);
            },
            enroute: () {
              emit(state.copyWith(
                isLoadingTransitPackages: false,
                isLoadingActivePackages: false,
              ));

              _updatePackagesInTransit(
                inTransit: list.domain.plus(state.packagesInTransit).asList().unique((val) => val.id).toImmutableList(),
              );
            },
            orElse: () => null,
          );
        },
      );

      emit(state.copyWith(isLoading: false));
    });
  }

  Future<void> acceptPackageDelivery(
    BuildContext c,
    SendPackage package,
  ) async {
    await _checkWasUpdatedRecently(c, (location) async {
      emit(state.copyWith(isLoading: true, isAccepting: true, status: none()));
      try {
        final _conn = await connection();

        await _conn.fold(
          () async {
            final _result = await _logisticsRepository.acceptPackageDelivery(
              '${package.id.value}',
              lat: '${location.lat.getOrNull}',
              lng: '${location.lng.getOrNull}',
            );

            _result.response.map(
              error: (_) => emit(state.copyWith(status: some(_result))),
              success: (_) {
                emit(state.copyWith(
                  activePackages: state.activePackages.minusElement(package),
                  currentPackage: package,
                  status: some(_result),
                ));
              },
            );
          },
          (e) async => emit(state.copyWith(status: optionOf(e))),
        );
      } on AppNetworkException catch (e) {
        emit(state.copyWith(status: some(e.asResponse())));
      }

      emit(state.copyWith(isLoading: false, isAccepting: false));
    });
  }

  Future<void> declinePackageDelivery(
    BuildContext c,
    SendPackage package,
  ) async {
    await _checkWasUpdatedRecently(c, (location) async {
      emit(state.copyWith(isLoading: true, isDeclining: true, status: none()));

      try {
        final _conn = await connection();

        await _conn.fold(
          () async {
            final _result = await _logisticsRepository.declinePackageDelivery(
              '${package.id.value}',
              lat: '${location.lat.getOrNull}',
              lng: '${location.lng.getOrNull}',
            );

            _result.response.map(
              error: (_) => emit(state.copyWith(status: some(_result))),
              success: (_) {
                emit(state.copyWith(
                  activePackages: state.activePackages.minusElement(package),
                  status: some(_result),
                ));
              },
            );
          },
          (e) async => emit(state.copyWith(status: optionOf(e))),
        );
      } on AppNetworkException catch (e) {
        emit(state.copyWith(status: some(e.asResponse())));
      }

      emit(state.copyWith(isLoading: false, isDeclining: false));
    });
  }
}
