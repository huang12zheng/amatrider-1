library request_cubit.dart;

import 'package:amatrider/core/data/http_client/index.dart';
import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/presentation/managers/managers.dart';
import 'package:amatrider/features/home/data/repositories/logistics/logistics_repository.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
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
  final LogisticsRepository _logisticsRepository;

  RequestCubit(this._logisticsRepository) : super(RequestState.initial());

  void _toggleLoading([bool? isLoading]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  void setCurrentPackage(SendPackage package) =>
      emit(state.copyWith(currentPackage: package));

  Future<void> allPackages(
    BuildContext c, {
    SendPackageStatus status = SendPackageStatus.ACTIVE,
    RiderLocation? location,
  }) async {
    emit(state.copyWith(
      isLoading: true,
      isLoadingTransitPackages: true,
      isLoadingActivePackages: true,
    ));

    if (location == null) {
      final _locationCubit = BlocProvider.of<LocationCubit>(c);
      await _locationCubit.getRiderLocation(c);
      location = _locationCubit.state.position;
    }

    // ignore: unawaited_futures
    connection().then((val) =>
        val.fold(() => null, (e) => emit(state.copyWith(status: optionOf(e)))));

    final _result = await _logisticsRepository.all(
      status: status,
      lat: '${location?.lat.getOrEmpty}',
      lng: '${location?.lng.getOrEmpty}',
    );

    status.maybeWhen(
      active: () => emit(state.copyWith(
        isLoadingActivePackages: false,
        activePackages: _result.domain,
      )),
      enroute: () {
        emit(state.copyWith(
          isLoadingTransitPackages: false,
          isLoadingActivePackages: false,
          packagesInTransit: _result.domain
              .plus(state.packagesInTransit)
              .asList()
              .unique((val) => val.id)
              .toImmutableList(),
        ));
      },
      orElse: () => null,
    );

    emit(state.copyWith(isLoading: false));
  }

  Future<void> acceptPackageDelivery(
    BuildContext c,
    SendPackage package,
  ) async {
    emit(state.copyWith(isLoading: true, isAccepting: true));

    try {
      final _conn = await connection();

      await _conn.fold(
        () async {
          final _locationCubit = BlocProvider.of<LocationCubit>(c);
          await _locationCubit.getRiderLocation(c);

          final location = _locationCubit.state.position;

          final _result = await _logisticsRepository.acceptPackageDelivery(
            '${package.id.value}',
            lat: '${location?.lat.getOrNull}',
            lng: '${location?.lng.getOrNull}',
          );

          emit(state.copyWith(
            activePackages: state.activePackages.minusElement(package),
            currentPackage: package,
            status: some(_result),
          ));

          // ignore: unawaited_futures
          allPackages(c, status: SendPackageStatus.ENROUTE_TO_SENDER);
        },
        (e) async => emit(state.copyWith(status: optionOf(e))),
      );
    } on AppNetworkException catch (e) {
      emit(state.copyWith(status: some(e.asResponse())));
    }

    emit(state.copyWith(isLoading: false, isAccepting: false));
  }

  Future<void> declinePackageDelivery(
    BuildContext c,
    SendPackage package,
  ) async {
    emit(state.copyWith(isLoading: true, isDeclining: true));

    try {
      final _conn = await connection();

      await _conn.fold(
        () async {
          final _locationCubit = BlocProvider.of<LocationCubit>(c);
          await _locationCubit.getRiderLocation(c);

          final location = _locationCubit.state.position;

          final _result = await _logisticsRepository.declinePackageDelivery(
            '${package.id.value}',
            lat: '${location?.lat.getOrNull}',
            lng: '${location?.lng.getOrNull}',
          );

          emit(state.copyWith(
            activePackages: state.activePackages.minusElement(package),
            currentPackage: null,
            status: some(_result),
          ));
        },
        (e) async => emit(state.copyWith(status: optionOf(e))),
      );
    } on AppNetworkException catch (e) {
      emit(state.copyWith(status: some(e.asResponse())));
    }

    emit(state.copyWith(isLoading: false, isDeclining: false));
  }
}
