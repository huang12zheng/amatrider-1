// Define Controller for rhe app
import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _global = GlobalKey<InnerDrawerState>(debugLabel: '_DashboardDrawerState');

// var scaffoldController = StateNotifierProvider.autoDispose<ScaffoldController,
//     GlobalKey<ScaffoldState>>((ref) => ScaffoldController(_Const._global));

var scaffoldController =
    StateNotifierProvider.autoDispose<ScaffoldController, GlobalKey<InnerDrawerState>>((ref) => ScaffoldController(_global));

// Define StateNotifier for the app
class ScaffoldController extends StateNotifier<GlobalKey<InnerDrawerState>> {
  ScaffoldController(GlobalKey<InnerDrawerState> state) : super(state);

  InnerDrawerState? get _state => state.currentState;

  bool get isOpen => _state?.mounted ?? false;

  void toggle() {
    // direction: InnerDrawerDirection.start
    _state?.toggle();
  }

  void open() => _state?.open();

  void close() => _state?.close();
}
