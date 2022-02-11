library route_aware_observer.dart;

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _global = RouteObserver<PageRoute<dynamic>>();

var routeAwareController = StateNotifierProvider.autoDispose<_RouteAwareController, RouteObserver<PageRoute<dynamic>>>(
  (ref) => _RouteAwareController(_global),
);

class _RouteAwareController extends StateNotifier<RouteObserver<PageRoute<dynamic>>> {
  _RouteAwareController(RouteObserver<PageRoute<dynamic>> state) : super(state);

  RouteObserver<PageRoute<dynamic>> get _state => state;

  void subscribe(RouteAware routeAware, PageRoute<dynamic> route) => _state.subscribe(routeAware, route);

  void unsubscribe(RouteAware routeAware) => _state.unsubscribe(routeAware);
}

abstract class RouteAwareState<T extends ConsumerStatefulWidget> extends ConsumerState<T> with RouteAware, AfterLayoutMixin<T> {
  bool enteredScreen = false;

  // use `afterFirstLayout()`, because we should wait for
  // the `initState() completed before getting objects from `context`
  @override
  @mustCallSuper
  void afterFirstLayout(BuildContext context) {
    if (mounted) {
      // get the instance of `RouteObserver`
      // subscribe for the change of route
      ref.read(routeAwareController.notifier).subscribe(this, ModalRoute.of(context) as PageRoute);
      // execute asynchronously as soon as possible
      Timer.run(() => _enterScreen(context.watchRouter.current, context.watchTabsRouter.activeIndex));
    }
  }

  void _enterScreen(RouteData? current, int? tab) {
    onEnterScreen(current, tab);
    enteredScreen = true;
  }

  void _leaveScreen(RouteData? current, int? tab) {
    onLeaveScreen(current, tab);
    enteredScreen = false;
  }

  @override
  @mustCallSuper
  void dispose() {
    if (enteredScreen) {
      _leaveScreen(context.watchRouter.current, context.watchTabsRouter.activeIndex);
    }
    ref.read(routeAwareController.notifier).unsubscribe(this);
    super.dispose();
  }

  @override
  @mustCallSuper
  void didPopNext() {
    Timer.run(() => _enterScreen(context.watchRouter.current, context.watchTabsRouter.activeIndex));
  }

  @override
  @mustCallSuper
  void didPop() {
    _leaveScreen(context.watchRouter.current, context.watchTabsRouter.activeIndex);
  }

  @override
  @mustCallSuper
  void didPushNext() {
    _leaveScreen(context.watchRouter.current, context.watchTabsRouter.activeIndex);
  }

  /// this method will always be executed on enter this screen
  void onEnterScreen(RouteData? current, int? tabIndex);

  /// this method will always be executed on leaving this screen
  void onLeaveScreen(RouteData? current, int? tabIndex);
}
