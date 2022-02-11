library tab_navigation_cubit.dart;

import 'package:amatrider/features/home/presentation/pages/index.dart';
import 'package:amatrider/utils/utils.dart' as util;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'tab_navigation_cubit.freezed.dart';
part 'tab_navigation_state.dart';

@injectable
class TabNavigationCubit extends HydratedCubit<TabNavigationState> {
  static const String _kTabPersistKey = 'persisted-tab';
  bool attachDefaultListener = true;

  TabNavigationCubit() : super(TabNavigationState.initial());

  @override
  TabNavigationState? fromJson(Map<String, dynamic> json) {
    try {
      final _index = json[_kTabPersistKey] as int;
      return state.copyWith(currentIndex: _index, previousIndex: _index);
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

  void setPreviousIndex(int index) => emit(state.copyWith(previousIndex: index));

  void setCurrentIndex(BuildContext context, [int index = 0]) {
    emit(state.copyWith(currentIndex: index, previousIndex: state.currentIndex));
    context.tabsRouter.setActiveIndex(index);
  }

  void updateTabsRouter(TabsRouter? router) => emit(state.copyWith(tabRouter: router ?? state.tabRouter));

  TabNavigationCubit initTabbar(TickerProvider ticker, {required int length}) {
    if (state.tabController == null) {
      final _controller = TabController(length: length, vsync: ticker);

      emit(state.copyWith(tabController: _controller));

      addTabListener(_tabbarListener);
    }

    return this;
  }

  Color setTabTextColor(int currentTabIndex, {Color? selected, Color? unselected}) {
    return state.tabController == null
        ? util.App.resolveColor(util.Palette.text100, dark: Colors.white)!
        : state.selectedTab == currentTabIndex
            ? selected ?? Colors.white
            : unselected ?? util.App.resolveColor(util.Palette.text100, dark: Colors.white)!;
  }

  Color setTabBgColor(int currentTabIndex, {Color? selected, Color? unselected}) {
    return state.tabController == null
        ? util.App.resolveColor(util.Palette.cardColorLight, dark: util.Palette.cardColorDark)!
        : state.selectedTab == currentTabIndex
            ? selected ?? util.App.resolveColor(util.Palette.accentColor)!
            : unselected ?? util.App.resolveColor(util.Palette.cardColorLight, dark: util.Palette.cardColorDark)!;
  }

  void _tabbarListener() {
    if (state.tabController != null) changedTabIndex(state.tabController!.index);
  }

  void addTabListener(VoidCallback listener, [bool reattachDefault = false]) {
    if (state.tabController != null) {
      state.tabController!.addListener(listener);

      if (reattachDefault) {
        removeTabListener(_tabbarListener);
        addTabListener(_tabbarListener);
      }
    }
  }

  void removeTabListener(VoidCallback listener) {
    if (state.tabController != null) state.tabController!.removeListener(listener);
  }

  void changedTabIndex(int index) {
    emit(state.copyWith(selectedTab: index));
  }

  void reset() => emit(state.copyWith(currentIndex: 0, previousIndex: 0));

  @override
  Future<void> close() {
    state.tabController?.removeListener(_tabbarListener);
    state.tabController?.dispose();
    return super.close();
  }
}
