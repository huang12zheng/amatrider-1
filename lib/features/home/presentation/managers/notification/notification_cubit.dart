library notification_cubit.dart;

import 'dart:async';
import 'dart:convert';

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/data/websocket_event.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/managers/managers.dart';
import 'package:amatrider/features/auth/domain/index.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/data/repositories/laravel_echo_repository.dart';
import 'package:amatrider/features/home/data/repositories/utilities_repository/utilities_repository.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'notification_cubit.freezed.dart';
part 'notification_state.dart';

@injectable
class NotificationCubit extends Cubit<NotificationState>
    with BaseCubit<NotificationState> {
  final AuthFacade _auth;
  final EchoRepository _echoRepository;
  final UtilitiesRepository _repository;

  String? riderId;

  NotificationCubit(
    this._auth,
    this._repository,
    this._echoRepository,
  ) : super(NotificationState.initial());

  @override
  Future<void> close() {
    reset();
    return super.close();
  }

  void reset() {
    if (riderId != null)
      _echoRepository.close(DispatchRider.notifications('$riderId'));
    emit(state.copyWith(subscribed: false));
  }

  void _toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
        status: status ?? state.status,
      ));

  void _updateCollection() {
    // Ensure only unique elements are present
    var _new = state.inAppNotifications.iter.toList().toImmutableList();

    // Sort with & group-by the createdAt property
    var _sorted =
        _new.sortedWith((a, b) => b.createdAt.compareTo(a.createdAt)).groupBy(
              (it) => DateTime(
                it.createdAt.year,
                it.createdAt.month,
                it.createdAt.day,
              ),
            );

    emit(state.copyWith(inAppNotificationCollection: _sorted));
  }

  void echo() async {
    // If not already subscribed to the notification
    if (!state.subscribed) {
      final _result = await _auth.rider;

      _result.fold(
        () => null,
        (account) {
          riderId = account!.uid.value!;

          _echoRepository.notification(
            DispatchRider.notifications('$riderId'),
            onInit: () => emit(state.copyWith(subscribed: true)),
            onData: (data, _) {
              final json = jsonDecode(data) as Map<String, dynamic>;

              final _notification = _repository.mapInAppNotification(
                InAppNotificationDTO.fromJson(json),
              );

              if (_notification.title.isValid)
                emit(state.copyWith(
                  status: some(AppHttpResponse.successful(
                    _notification.title.getOrNull,
                    pop: false,
                    uuid: UniqueId<String>.v4().value,
                  )),
                ));

              emit(state.copyWith(
                status: none(),
                inAppNotifications: state.inAppNotifications
                    .plusElement(_notification)
                    .asList()
                    .toImmutableList(),
              ));

              // Update collection
              _updateCollection();
            },
          );
        },
      );
    }
  }

  Future<void> inAppNotifications() async {
    _toggleLoading(true, none());

    final _resopnse = await _repository.inAppNotifications();

    _resopnse.fold(
      (failure) => emit(state.copyWith(status: some(failure))),
      (notifications) {
        emit(state.copyWith(status: none(), inAppNotifications: notifications));
        // Update collection
        _updateCollection();
      },
    );

    _toggleLoading(false);
  }
}
