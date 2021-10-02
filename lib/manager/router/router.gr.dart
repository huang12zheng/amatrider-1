// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'dart:async' as _i7;

import 'package:amatrider/_404.dart' as _i3;
import 'package:amatrider/core/presentation/index.dart' as _i2;
import 'package:amatrider/features/onborading/presentation/screens/index.dart'
    as _i1;
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/cupertino.dart' as _i6;
import 'package:flutter/material.dart' as _i5;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.SplashScreen());
    },
    OnboardingRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.OnboardingScreen());
    },
    NotConnectedRoute.name: (routeData) {
      final args = routeData.argsAs<NotConnectedRouteArgs>();
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.NotConnectedScreen(key: args.key, future: args.future));
    },
    NoHistoryRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.NoHistoryScreen());
    },
    UnknownRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i3.UnknownScreen(), title: 'Error 404');
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashRoute.name, path: '/', fullMatch: true),
        _i4.RouteConfig(OnboardingRoute.name,
            path: '/onboarding-screen', fullMatch: true),
        _i4.RouteConfig(NotConnectedRoute.name,
            path: 'not-connected-screen', fullMatch: true),
        _i4.RouteConfig(NoHistoryRoute.name,
            path: 'no-history-screen', fullMatch: true),
        _i4.RouteConfig(UnknownRoute.name, path: '*')
      ];
}

/// generated route for [_i1.SplashScreen]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i1.OnboardingScreen]
class OnboardingRoute extends _i4.PageRouteInfo<void> {
  const OnboardingRoute() : super(name, path: '/onboarding-screen');

  static const String name = 'OnboardingRoute';
}

/// generated route for [_i2.NotConnectedScreen]
class NotConnectedRoute extends _i4.PageRouteInfo<NotConnectedRouteArgs> {
  NotConnectedRoute({_i6.Key? key, required _i7.Future<dynamic> future})
      : super(name,
            path: 'not-connected-screen',
            args: NotConnectedRouteArgs(key: key, future: future));

  static const String name = 'NotConnectedRoute';
}

class NotConnectedRouteArgs {
  const NotConnectedRouteArgs({this.key, required this.future});

  final _i6.Key? key;

  final _i7.Future<dynamic> future;
}

/// generated route for [_i2.NoHistoryScreen]
class NoHistoryRoute extends _i4.PageRouteInfo<void> {
  const NoHistoryRoute() : super(name, path: 'no-history-screen');

  static const String name = 'NoHistoryRoute';
}

/// generated route for [_i3.UnknownScreen]
class UnknownRoute extends _i4.PageRouteInfo<void> {
  const UnknownRoute() : super(name, path: '*');

  static const String name = 'UnknownRoute';
}
