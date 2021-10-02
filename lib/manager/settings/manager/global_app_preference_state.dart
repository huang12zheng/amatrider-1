part of 'global_app_preference_cubit.dart';

@freezed
class GlobalPreferenceState with _$GlobalPreferenceState {
  const factory GlobalPreferenceState({
    @Default(false) bool isLoading,
    @Default(true) bool isFirstLaunch,
    @Default(false) bool signedInRecently,
  }) = _GlobalPreferenceState;

  factory GlobalPreferenceState.initial() => const GlobalPreferenceState();
}
