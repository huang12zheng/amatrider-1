import 'dart:async';

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:amatrider/features/auth/domain/index.dart';
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

  AuthWatcherCubit(this._facade) : super(AuthWatcherState.initial());

  @override
  Future<void> close() async {
    await unsubscribeAuthChanges;
    await unsubscribeUserChanges;
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
  }

  Future<void> signOut() async {
    toggleLoading(true);

    await _facade.signOut(true);

    toggleLoading(false);

    emit(state.copyWith(
      isAuthenticated: false,
      rider: null,
      option: none(),
    ));
  }
}
