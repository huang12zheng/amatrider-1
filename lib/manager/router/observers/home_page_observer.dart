library home_page_observer.dart;

import 'package:amatrider/features/home/presentation/pages/index.dart' as p;
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomePageObserver extends AutoRouterObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('New route pushed: ${route.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('Route poped from stack: ${route.settings.name}');
    print('Current route: ${previousRoute?.settings.name}');

    // p.HomePage.onRefresh(innerNavigator(context).navigatorKey.currentContext!);
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    print('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    print('Tab route re-visited: ${route.name}');
  }
}
