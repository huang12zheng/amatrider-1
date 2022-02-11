library request_cubit.dart;

import 'dart:convert';

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/managers/managers.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/data/repositories/laravel_echo_repository.dart';
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
  final EchoRepository _echoRepository;
  final LogisticsRepository _logisticsRepository;

  String? riderId;

  RequestCubit(
    this._logisticsRepository,
    this._echoRepository,
  ) : super(RequestState.initial());

  @override
  Future<void> close() {
    if (riderId != null) {
      _echoRepository.leave(RequestEvents.newPackageChannel('$riderId'), event: RequestEvents.newPackageEvent);
      _echoRepository.leave(RequestEvents.newOrderChannel('$riderId'), event: RequestEvents.newOrderEvent);
      // _echoRepository.leave(RequestEvents.packageDeliveredChannel('$riderId'), event: RequestEvents.packageDeliveredEvent);
      // _echoRepository.leave(RequestEvents.orderDeliveredChannel('$riderId'), event: RequestEvents.packageDeliveredEvent);
    }
    return super.close();
  }

  // void _toggleLoading([bool? isLoading]) =>
  //     emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  void markAsDelivered(Logistics? deliverable) {
    final item = state.inTransit.firstOrNull((it) => it.id == deliverable?.id);

    if (item != null) emit(state.copyWith(inTransit: state.inTransit.minusElementIfPresent(item)));
  }

  void _mapNewDeliverable(Map<String, dynamic> json) {
    final meta = json.containsKey('meta') ? MetaObjectDTO.fromJson(json['meta'] as Map<String, dynamic>) : null;

    final deliverable = meta?.mapOrNull(
      package: (dto) {
        final title = json.containsKey('title') ? '${json['title']}' : 'New Active Package';
        emit(state.copyWith(status: some(AppHttpResponse.successful(title, pop: false))));
        return dto.package.domain;
      },
      order: (dto) {
        final title = json.containsKey('title') ? '${json['title']}' : 'New Order Available for Pickup';
        emit(state.copyWith(status: some(AppHttpResponse.successful(title, pop: false))));
        return dto.order.domain;
      },
    );

    if (deliverable != null)
      emit(state.copyWith(
        inTransit: state.inTransit.minusElementIfPresent(deliverable),
        active: state.active.plusElementIfAbsent(deliverable).sortedWith((a, b) => b.createdAt!.compareTo(a.createdAt!)),
      ));
  }

  void setCurrent(Logistics? item) {
    emit(state.copyWith(current: item));
  }

  void echo(Rider rider) async {
    riderId = rider.uid.value!;

    _echoRepository.private(
      RequestEvents.newPackageChannel('$riderId'),
      RequestEvents.newPackageEvent,
      onData: (data, _) {
        emit(state.copyWith(status: none()));

        _mapNewDeliverable(jsonDecode(data) as Map<String, dynamic>);
      },
    );

    _echoRepository.private(
      RequestEvents.newOrderChannel('$riderId'),
      RequestEvents.newOrderEvent,
      onData: (data, _) {
        emit(state.copyWith(status: none()));

        _mapNewDeliverable(jsonDecode(data) as Map<String, dynamic>);
      },
    );
  }

  Future<void> allInTransit(BuildContext context, {RiderLocation? location}) async {
    emit(state.copyWith(isLoadingInTransit: true, status: none()));

    final _locationCubit = BlocProvider.of<LocationCubit>(context);

    await _locationCubit.getRiderLocation(
      context,
      callback: (location) async {
        final _result = await _logisticsRepository.allInTransit(
          lat: '${location.lat.getOrEmpty}',
          lng: '${location.lng.getOrEmpty}',
        );

        _result.fold(
          (e) => emit(state.copyWith(
            status: optionOf(e),
            isLoadingInTransit: false,
          )),
          (list) => emit(state.copyWith(
            isLoadingInTransit: false,
            inTransit: list.sortedWith((a, b) => b.createdAt!.compareTo(a.createdAt!)),
          )),
        );
      },
    );
  }

  Future<void> allActive(BuildContext context, {RiderLocation? location}) async {
    emit(state.copyWith(isLoadingActive: true, status: none()));

    final _locationCubit = BlocProvider.of<LocationCubit>(context);

    await _locationCubit.getRiderLocation(
      context,
      callback: (location) async {
        final _result = await _logisticsRepository.allActive(
          lat: '${location.lat.getOrEmpty}',
          lng: '${location.lng.getOrEmpty}',
        );

        _result.fold(
          (e) => emit(state.copyWith(
            status: optionOf(e),
            isLoadingActive: false,
          )),
          (list) {
            final active = list.filter((it) =>
                !ParcelStatus.packageInTransit.contains(it.status) &&
                !ParcelStatus.orderWithRider.contains(it.status) &&
                !ParcelStatus.delivered.contains(it.status));

            emit(state.copyWith(
              isLoadingActive: false,
              active: active.sortedWith((a, b) => b.createdAt!.compareTo(a.createdAt!)),
            ));
          },
        );
      },
    );
  }

  Future<void> acceptDeliverable(
    BuildContext context,
    Logistics item, {
    required void Function() onAccepted,
  }) async {
    emit(state.copyWith(isLoading: true, isAccepting: true, status: none()));

    final _locationCubit = BlocProvider.of<LocationCubit>(context);

    await _locationCubit.getRiderLocation(context, callback: (location) async {
      final _result = await _logisticsRepository.acceptDeliverable(
        item,
        lat: '${location.lat.getOrNull}',
        lng: '${location.lng.getOrNull}',
      );

      _result.response.mapOrNull(
        error: (_) => emit(state.copyWith(isLoading: false, isAccepting: false, status: optionOf(_result))),
        success: (_) {
          // Check if RiderID in deliverable is the same as the authenticated Rider
          // If TRUE -> Add to "Packages in Transit"
          final match = state.active.firstOrNull((it) => it.id == item.id);

          // Update in transit
          emit(state.copyWith(
            isLoading: false,
            isAccepting: false,
            active: state.active.minusElementIfPresent(match!),
            inTransit: state.inTransit.plusElementIfAbsent(match).sortedWith((a, b) => b.createdAt!.compareTo(a.createdAt!)),
          ));

          // Set current
          setCurrent(match);

          onAccepted.call();
        },
      );
    });
  }

  Future<void> declineDeliverable(
    BuildContext context,
    Logistics item, {
    required void Function() onDeclined,
  }) async {
    emit(state.copyWith(isLoading: true, isDeclining: true, status: none()));

    final _locationCubit = BlocProvider.of<LocationCubit>(context);

    await _locationCubit.getRiderLocation(context, callback: (location) async {
      final _result = await _logisticsRepository.declineDeliverable(
        item,
        lat: '${location.lat.getOrNull}',
        lng: '${location.lng.getOrNull}',
      );

      emit(state.copyWith(isLoading: false, isDeclining: false, status: optionOf(_result)));

      _result.response.mapOrNull(success: (_) => onDeclined());
    });
  }
}
