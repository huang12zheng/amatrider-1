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

typedef Task = void Function(Either<Failure, Option<User?>> either);

@injectable
class AuthWatcherCubit extends Cubit<AuthWatcherState> {
  final AuthFacade _facade;
  StreamSubscription<Either<Failure, Option<User?>>>? _authStateChanges;
  StreamSubscription<Option<User?>>? _userChanges;

  AuthWatcherCubit(this._facade) : super(AuthWatcherState.initial());

  void toggleLoading([bool? isLoading]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  Future<void> get unsubscribeAuthChanges async =>
      await _authStateChanges?.cancel();

  Future<void> get unsubscribeUserChanges async => await _userChanges?.cancel();

  Future<void> subscribeToAuthChanges(Task actions) async {
    toggleLoading(true);

    // Get current user
    final _req = await _facade.currentUser;
    final user = _req.getOrElse(() => none()).getOrElse(() => null);

    // Cancel previous subscription
    await unsubscribeAuthChanges;

    // Start new subsrciption
    _authStateChanges ??= _facade.onAuthStateChanges.listen((data) {
      final _user = data.getOrElse(() => none()).getOrElse(() => null);

      emit(state.copyWith(
        isListeningForAuthChanges: true,
        isAuthenticated: _user != null,
        user: _user,
        option: optionOf(_user),
      ));

      actions.call(data);

      toggleLoading(false);
    });

    emit(state.copyWith(
      isAuthenticated: user != null,
      user: user,
      option: optionOf(user),
    ));

    // Only if user is authenticated, then fetch user data (called once!)
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

    _userChanges ??= _facade.onUserChanges.listen((option) {
      final _user = option.getOrElse(() => null);

      emit(state.copyWith(
        isListeningForUserChanges: true,
        isAuthenticated: _user != null,
        user: _user,
        option: optionOf(_user),
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
      user: null,
      option: none(),
    ));
  }

  @override
  Future<void> close() async {
    await unsubscribeAuthChanges;
    await unsubscribeUserChanges;
    return super.close();
  }
}
