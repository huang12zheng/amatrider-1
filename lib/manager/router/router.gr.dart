// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'dart:async' as _i8;

import 'package:amatrider/_404.dart' as _i4;
import 'package:amatrider/core/presentation/index.dart' as _i3;
import 'package:amatrider/features/home/presentation/pages/index.dart' as _i6;
import 'package:amatrider/features/home/presentation/screens/index.dart' as _i2;
import 'package:amatrider/features/onborading/presentation/screens/index.dart'
    as _i1;
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i7;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.SplashScreen());
    },
    OnboardingRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.OnboardingScreen());
    },
    RideAcceptedRoute.name: (routeData) {
      final args = routeData.argsAs<RideAcceptedRouteArgs>(
          orElse: () => const RideAcceptedRouteArgs());
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: _i2.RideAcceptedScreen(key: args.key));
    },
    DashboardRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.DashboardScreen());
    },
    NotConnectedRoute.name: (routeData) {
      final args = routeData.argsAs<NotConnectedRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.NotConnectedScreen(key: args.key, future: args.future));
    },
    NoHistoryRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.NoHistoryScreen());
    },
    UnknownRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: _i4.UnknownScreen(), title: 'Error 404');
    },
    HomeRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    HistoryRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    InsightRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    HomePage.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.HomePage());
    },
    HistoryPage.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.HistoryPage());
    },
    InsightsPage.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.InsightsPage());
    },
    ProfilePage.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.ProfilePage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name, path: '/', fullMatch: true),
        _i5.RouteConfig(OnboardingRoute.name,
            path: '/onboarding-screen', fullMatch: true),
        _i5.RouteConfig(RideAcceptedRoute.name,
            path: 'ride-accepted-screen', fullMatch: true),
        _i5.RouteConfig(DashboardRoute.name,
            path: 'bottom-navigation',
            fullMatch: true,
            children: [
              _i5.RouteConfig(HomeRouter.name, path: 'home', children: [
                _i5.RouteConfig(HomePage.name, path: ''),
                _i5.RouteConfig('*#redirect',
                    path: '*', redirectTo: '', fullMatch: true)
              ]),
              _i5.RouteConfig(HistoryRouter.name, path: 'history', children: [
                _i5.RouteConfig(HistoryPage.name, path: ''),
                _i5.RouteConfig('*#redirect',
                    path: '*', redirectTo: '', fullMatch: true)
              ]),
              _i5.RouteConfig(InsightRouter.name, path: 'insights', children: [
                _i5.RouteConfig(InsightsPage.name, path: ''),
                _i5.RouteConfig('*#redirect',
                    path: '*', redirectTo: '', fullMatch: true)
              ]),
              _i5.RouteConfig(ProfileRouter.name, path: 'account', children: [
                _i5.RouteConfig(ProfilePage.name, path: ''),
                _i5.RouteConfig('*#redirect',
                    path: '*', redirectTo: '', fullMatch: true)
              ])
            ]),
        _i5.RouteConfig(NotConnectedRoute.name,
            path: 'not-connected-screen', fullMatch: true),
        _i5.RouteConfig(NoHistoryRoute.name,
            path: 'no-history-screen', fullMatch: true),
        _i5.RouteConfig(UnknownRoute.name, path: '*')
      ];
}

/// generated route for [_i1.SplashScreen]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i1.OnboardingScreen]
class OnboardingRoute extends _i5.PageRouteInfo<void> {
  const OnboardingRoute() : super(name, path: '/onboarding-screen');

  static const String name = 'OnboardingRoute';
}

/// generated route for [_i2.RideAcceptedScreen]
class RideAcceptedRoute extends _i5.PageRouteInfo<RideAcceptedRouteArgs> {
  RideAcceptedRoute({_i7.Key? key})
      : super(name,
            path: 'ride-accepted-screen',
            args: RideAcceptedRouteArgs(key: key));

  static const String name = 'RideAcceptedRoute';
}

class RideAcceptedRouteArgs {
  const RideAcceptedRouteArgs({this.key});

  final _i7.Key? key;
}

/// generated route for [_i2.DashboardScreen]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute({List<_i5.PageRouteInfo>? children})
      : super(name, path: 'bottom-navigation', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for [_i3.NotConnectedScreen]
class NotConnectedRoute extends _i5.PageRouteInfo<NotConnectedRouteArgs> {
  NotConnectedRoute({_i7.Key? key, required _i8.Future<dynamic> future})
      : super(name,
            path: 'not-connected-screen',
            args: NotConnectedRouteArgs(key: key, future: future));

  static const String name = 'NotConnectedRoute';
}

class NotConnectedRouteArgs {
  const NotConnectedRouteArgs({this.key, required this.future});

  final _i7.Key? key;

  final _i8.Future<dynamic> future;
}

/// generated route for [_i3.NoHistoryScreen]
class NoHistoryRoute extends _i5.PageRouteInfo<void> {
  const NoHistoryRoute() : super(name, path: 'no-history-screen');

  static const String name = 'NoHistoryRoute';
}

/// generated route for [_i4.UnknownScreen]
class UnknownRoute extends _i5.PageRouteInfo<void> {
  const UnknownRoute() : super(name, path: '*');

  static const String name = 'UnknownRoute';
}

/// generated route for [_i5.EmptyRouterPage]
class HomeRouter extends _i5.PageRouteInfo<void> {
  const HomeRouter({List<_i5.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i5.EmptyRouterPage]
class HistoryRouter extends _i5.PageRouteInfo<void> {
  const HistoryRouter({List<_i5.PageRouteInfo>? children})
      : super(name, path: 'history', initialChildren: children);

  static const String name = 'HistoryRouter';
}

/// generated route for [_i5.EmptyRouterPage]
class InsightRouter extends _i5.PageRouteInfo<void> {
  const InsightRouter({List<_i5.PageRouteInfo>? children})
      : super(name, path: 'insights', initialChildren: children);

  static const String name = 'InsightRouter';
}

/// generated route for [_i5.EmptyRouterPage]
class ProfileRouter extends _i5.PageRouteInfo<void> {
  const ProfileRouter({List<_i5.PageRouteInfo>? children})
      : super(name, path: 'account', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for [_i6.HomePage]
class HomePage extends _i5.PageRouteInfo<void> {
  const HomePage() : super(name, path: '');

  static const String name = 'HomePage';
}

/// generated route for [_i6.HistoryPage]
class HistoryPage extends _i5.PageRouteInfo<void> {
  const HistoryPage() : super(name, path: '');

  static const String name = 'HistoryPage';
}

/// generated route for [_i6.InsightsPage]
class InsightsPage extends _i5.PageRouteInfo<void> {
  const InsightsPage() : super(name, path: '');

  static const String name = 'InsightsPage';
}

/// generated route for [_i6.ProfilePage]
class ProfilePage extends _i5.PageRouteInfo<void> {
  const ProfilePage() : super(name, path: '');

  static const String name = 'ProfilePage';
}
