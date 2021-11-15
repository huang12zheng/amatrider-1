import 'dart:async';
import 'dart:convert';

import 'package:amatrider/core/data/database/app_database.dart';
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
    if (state.rider != null) {
      _echoRepository.stopListening(
        DispatchRider.profile('${state.rider?.uid.value}'),
        DispatchRider.profileEvent,
      );
      _echoRepository.close(DispatchRider.profile('${state.rider?.uid.value}'));
    }
    return super.close();
  }

  Future<void> get unsubscribeAuthChanges async =>
      await _authStateChanges?.cancel();

  Future<void> get unsubscribeUserChanges async =>
      await _riderChanges?.cancel();

  void toggleLoading([bool? isLoading]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  Future<void> subscribeToAuthChanges(Task actions) async {
    toggleLoading(true);

    // Get current rider
    final _req = await _facade.currentRider;
    final rider = _req.getOrElse(() => none()).getOrElse(() => null);

    // Cancel previous subscription
    await unsubscribeAuthChanges;

    // Start new subsrciption
    _authStateChanges ??= _facade.onAuthStateChanges.listen((data) {
      final _rider = data.getOrElse(() => none()).getOrElse(() => null);

      emit(state.copyWith(
        isListeningForAuthChanges: true,
        isAuthenticated: _rider != null,
        rider: _rider,
        option: optionOf(_rider),
      ));

      actions.call(data);

      toggleLoading(false);
    });

    emit(state.copyWith(
      isAuthenticated: rider != null,
      rider: rider,
      option: optionOf(rider),
    ));

    // Only if rider is authenticated, then fetch rider data (called once!)
    await _req.fold(
      (f) async => f.foldCode(
        is4031: () async => await _facade.sink(),
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
      ));

      toggleLoading(false);
    });

    toggleLoading(false);

    final rider = state.rider ?? (await _facade.rider).getOrElse(() => null);

    _echoRepository.private(
      DispatchRider.profile('${rider?.uid.value}'),
      DispatchRider.profileEvent,
      onData: (data, _) async {
        final json = jsonDecode(data) as Map<String, dynamic>;
        final dto = RiderDTO.fromJson(json['rider'] as Map<String, dynamic>);

        emit(state.copyWith(rider: dto.domain));

        final _storeResult =
            await _facade.retrieveAndCacheUpdatedRider(dto: dto);

        _storeResult.fold(
          (_) => null,
          (value) => emit(state.copyWith(option: value)),
        );
      },
    );
  }

  Future<void> signOut() async {
    toggleLoading(true);

    await _facade.signOut(true);

    toggleLoading(false);

    if (state.rider != null) {
      _echoRepository.leave(
        DispatchRider.profile('${state.rider?.uid.value}'),
        event: DispatchRider.profileEvent,
      );
    }

    emit(state.copyWith(
      isAuthenticated: false,
      rider: null,
      option: none(),
    ));
  }
}
