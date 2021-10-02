// Define Controller for rhe app
import 'package:amatrider/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class _Const {
  static final _global = GlobalKey<ScaffoldState>(
    debugLabel: '_DashboardState',
  );
}

var scaffoldController = StateNotifierProvider.autoDispose<ScaffoldController,
    GlobalKey<ScaffoldState>>((ref) => ScaffoldController(_Const._global));

// Define StateNotifier for the app
class ScaffoldController extends StateNotifier<GlobalKey<ScaffoldState>> {
  ScaffoldController(GlobalKey<ScaffoldState> state) : super(state);

  ScaffoldState? get _state => state.currentState;

  bool get isOpen =>
      _state != null && _state!.hasDrawer && _state!.isDrawerOpen;

  void open() {
    if (_state != null) if (_state!.hasDrawer && !_state!.isDrawerOpen)
      return _state!.openDrawer();
  }

  void close() async {
    if (_state != null) if (_state!.hasDrawer && _state!.isDrawerOpen)
      await navigator.pop();
  }
}
