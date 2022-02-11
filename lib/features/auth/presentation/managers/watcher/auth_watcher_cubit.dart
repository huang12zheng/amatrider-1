library auth_watcher_cubit.dart;

import 'dart:async';
import 'dart:convert';

import 'package:amatrider/core/data/database/app_database.dart';
import 'package:amatrider/core/data/http_client/index.dart';
import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/data/websocket_event.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:amatrider/features/auth/domain/index.dart';
import 'package:amatrider/features/home/data/repositories/laravel_echo_repository.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_watcher_cubit.freezed.dart';
part 'auth_watcher_state.dart';

typedef Task = void Function(Either<Failure, Option<Rider?>> either);

@injectable
class AuthWatcherCubit extends Cubit<AuthWatcherState> {
  StreamSubscription<Either<Failure, Option<Rider?>>>? _authStateChanges;
  final AuthFacade _facade;
  StreamSubscription<Option<Rider?>>? _riderChanges;
  final EchoRepository _echoRepository;

  AuthWatcherCubit(
    this._facade,
    this._echoRepository,
  ) : super(AuthWatcherState.initial());

  @override
  Future<void> close() async {
    await unsubscribeAuthChanges;
    await unsubscribeUserChanges;
    _unsubscribeFromProfileUpdate();
    return super.close();
  }

  Future<void> get unsubscribeAuthChanges async => await _authStateChanges?.cancel();

  Future<void> get unsubscribeUserChanges async => await _riderChanges?.cancel();

  void toggleLoading([bool? isLoading]) => emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  void toggleLogoutLoading([bool? value]) => emit(state.copyWith(isLoggingOut: value ?? !state.isLoggingOut));

  Future<void> subscribeToAuthChanges(Task actions) async {
    toggleLoading(true);

    // Get current rider
    final _req = await _facade.currentRider;
    // final rider = _req.getOrElse(() => none()).getOrElse(() => null);

    // Cancel previous subscription
    await unsubscribeAuthChanges;

    // Start new subsrciption
    _authStateChanges ??= _facade.onAuthStateChanges.listen((data) {
      _mapResponse(data, isListeningForAuthChanges: true);

      actions.call(data);

      toggleLoading(false);
    });

    _mapResponse(_req);

    // Only if rider is authenticated, then fetch rider data (called once!)
    await _req.fold(
      (f) async => f.fold(
        is4031: () async => await _facade.sink(),
        is41101: () async => await _facade.sink(),
        orElse: () => null,
      ),
      (_) async => await _facade.sink(),
    );

    toggleLoading(false);
  }

  Future<void> subscribeUserChanges() async {
    toggleLoading(true);

    await unsubscribeUserChanges;

    _riderChanges ??= _facade.onRiderChanges.listen((option) {
      final _rider = option.getOrElse(() => null);

      emit(state.copyWith(
        isListeningForUserChanges: true,
        isAuthenticated: _rider != null,
        rider: _rider,
        option: optionOf(_rider),
        status: none(),
      ));
    });

    toggleLoading(false);
  }

  void subscribeToProfileUpdate() {
    final _rider = state.rider;

    if (!state.subscribedToChannel && _rider != null)
      _echoRepository.private(
        DispatchRider.profile('${_rider.uid.value}'),
        DispatchRider.profileEvent,
        onInit: () {
          emit(state.copyWith(subscribedToChannel: true));
        },
        onData: (data, _) async {
          final json = jsonDecode(data) as Map<String, dynamic>;
          final dto = RiderDTO.fromJson(json['rider'] as Map<String, dynamic>);

          emit(state.copyWith(rider: dto.domain));

          final _storeResult = await _facade.retrieveAndCacheUpdatedRider(dto: dto);

          _storeResult.fold(
            (_) => null,
            (value) => emit(state.copyWith(option: value)),
          );
        },
      );
  }

  void _unsubscribeFromProfileUpdate() {
    if (state.subscribedToChannel) {
      _echoRepository.close(
        DispatchRider.profile('${state.rider?.uid.value}'),
        event: DispatchRider.profileEvent,
      );
    }
  }

  Future<void> signOut() async {
    toggleLogoutLoading(true);

    await _facade.signOut(notify: true);

    toggleLogoutLoading(false);

    _unsubscribeFromProfileUpdate();

    emit(state.copyWith(
      isAuthenticated: false,
      subscribedToChannel: false,
      rider: null,
      option: none(),
      status: none(),
    ));
  }

  void _mapResponse(
    Either<AppHttpResponse, Option<Rider?>> response, {
    bool? isListeningForAuthChanges,
  }) {
    final option = response.getOrElse(() => none());
    final _rider = option.getOrElse(() => null);

    if (isListeningForAuthChanges != null) emit(state.copyWith(isListeningForAuthChanges: true));

    response.fold(
      (httpResponse) {
        if (httpResponse.reason != AppNetworkExceptionReason.timedOut)
          emit(state.copyWith(
            isAuthenticated: _rider != null,
            rider: _rider,
            option: optionOf(_rider),
            status: optionOf(httpResponse),
          ));
        emit(state.copyWith(status: optionOf(httpResponse)));
      },
      (_) {
        emit(state.copyWith(
          isAuthenticated: _rider != null,
          rider: _rider,
          option: option,
          status: none(),
        ));
      },
    );
  }
}
