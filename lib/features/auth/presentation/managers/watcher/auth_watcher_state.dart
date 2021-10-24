part of 'auth_watcher_cubit.dart';

@freezed
class AuthWatcherState with _$AuthWatcherState {
  const factory AuthWatcherState({
    @Default(false) bool isLoading,
    @Default(false) bool isAuthenticated,
    @Default(false) bool isListeningForAuthChanges,
    @Default(false) bool isListeningForUserChanges,
    User? user,
    @Default(None()) Option<User?> option,
  }) = _AuthWatcherState;

  const AuthWatcherState._();

  factory AuthWatcherState.initial() => const AuthWatcherState();
}
