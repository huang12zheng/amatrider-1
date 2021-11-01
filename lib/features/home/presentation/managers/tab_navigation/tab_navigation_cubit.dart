import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'tab_navigation_state.dart';
part 'tab_navigation_cubit.freezed.dart';

@injectable
class TabNavigationCubit extends HydratedCubit<TabNavigationState> {
  static const String _kTabPersistKey = 'persisted-tab';

  TabNavigationCubit() : super(TabNavigationState.initial());

  @override
  TabNavigationState? fromJson(Map<String, dynamic> json) {
    try {
      final _index = json[_kTabPersistKey] as int;
      return state.copyWith(currentIndex: _index);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(TabNavigationState state) {
    if (state != TabNavigationState.initial())
      return <String, dynamic>{_kTabPersistKey: state.currentIndex};
    else
      return null;
  }

  void init(BuildContext context) {
    emit(state.copyWith(isInit: false));
    context.tabsRouter.setActiveIndex(state.currentIndex);
  }

  void setCurrentIndex(BuildContext context, [int index = 0]) {
    emit(state.copyWith(currentIndex: index));
    context.tabsRouter.setActiveIndex(index);
  }

  void reset() => emit(state.copyWith(currentIndex: 0));
}
