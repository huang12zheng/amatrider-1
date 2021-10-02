part of 'tab_navigation_cubit.dart';

@freezed
@immutable
class TabNavigationState with _$TabNavigationState {
  const factory TabNavigationState({
    @Default(0) int currentIndex,
    @Default(false) bool isLoading,
    @Default(true) bool isInit,
  }) = _TabNavigationState;

  factory TabNavigationState.initial() => const TabNavigationState();
}
