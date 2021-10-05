// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'dart:async' as _i10;

import 'package:amatrider/_404.dart' as _i5;
import 'package:amatrider/core/presentation/index.dart' as _i4;
import 'package:amatrider/features/home/presentation/pages/index.dart' as _i7;
import 'package:amatrider/features/home/presentation/screens/edit_bank_details_screen.dart'
    as _i3;
import 'package:amatrider/features/home/presentation/screens/index.dart' as _i2;
import 'package:amatrider/features/onborading/presentation/screens/index.dart'
    as _i1;
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/cupertino.dart' as _i9;
import 'package:flutter/material.dart' as _i8;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.SplashScreen());
    },
    OnboardingRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.OnboardingScreen());
    },
    DashboardRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.DashboardScreen());
    },
    AccountVerificationRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.AccountVerificationScreen());
    },
    DocumentUploadRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.DocumentUploadScreen());
    },
    EditBankDetailsRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.EditBankDetailsScreen());
    },
    RideAcceptedRoute.name: (routeData) {
      final args = routeData.argsAs<RideAcceptedRouteArgs>(
          orElse: () => const RideAcceptedRouteArgs());
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: _i2.RideAcceptedScreen(key: args.key));
    },
    ReferralRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i2.ReferralScreen(),
          fullscreenDialog: true);
    },
    NotConnectedRoute.name: (routeData) {
      final args = routeData.argsAs<NotConnectedRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i4.NotConnectedScreen(key: args.key, future: args.future));
    },
    NoHistoryRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.NoHistoryScreen());
    },
    UnknownRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: _i5.UnknownScreen(), title: 'Error 404');
    },
    HomeRouter.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    HistoryRouter.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    InsightRouter.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    HomePage.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.HomePage());
    },
    HistoryPage.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.HistoryPage());
    },
    InsightsPage.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.InsightsPage());
    },
    ProfilePage.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.ProfilePage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/', fullMatch: true),
        _i6.RouteConfig(OnboardingRoute.name,
            path: '/onboarding-screen', fullMatch: true),
        _i6.RouteConfig(DashboardRoute.name,
            path: 'bottom-navigation',
            fullMatch: true,
            children: [
              _i6.RouteConfig(HomeRouter.name, path: 'home', children: [
                _i6.RouteConfig(HomePage.name, path: ''),
                _i6.RouteConfig('*#redirect',
                    path: '*', redirectTo: '', fullMatch: true)
              ]),
              _i6.RouteConfig(HistoryRouter.name, path: 'history', children: [
                _i6.RouteConfig(HistoryPage.name, path: ''),
                _i6.RouteConfig('*#redirect',
                    path: '*', redirectTo: '', fullMatch: true)
              ]),
              _i6.RouteConfig(InsightRouter.name, path: 'insights', children: [
                _i6.RouteConfig(InsightsPage.name, path: ''),
                _i6.RouteConfig('*#redirect',
                    path: '*', redirectTo: '', fullMatch: true)
              ]),
              _i6.RouteConfig(ProfileRouter.name, path: 'account', children: [
                _i6.RouteConfig(ProfilePage.name, path: ''),
                _i6.RouteConfig('*#redirect',
                    path: '*', redirectTo: '', fullMatch: true)
              ])
            ]),
        _i6.RouteConfig(AccountVerificationRoute.name,
            path: 'account-verification-screen', fullMatch: true),
        _i6.RouteConfig(DocumentUploadRoute.name,
            path: 'document-upload-screen', fullMatch: true),
        _i6.RouteConfig(EditBankDetailsRoute.name,
            path: 'edit-bank-details-screen', fullMatch: true),
        _i6.RouteConfig(RideAcceptedRoute.name,
            path: 'ride-accepted-screen', fullMatch: true),
        _i6.RouteConfig(ReferralRoute.name,
            path: 'account-referral-screen', fullMatch: true),
        _i6.RouteConfig(NotConnectedRoute.name,
            path: 'not-connected-screen', fullMatch: true),
        _i6.RouteConfig(NoHistoryRoute.name,
            path: 'no-history-screen', fullMatch: true),
        _i6.RouteConfig(UnknownRoute.name, path: '*')
      ];
}

/// generated route for [_i1.SplashScreen]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i1.OnboardingScreen]
class OnboardingRoute extends _i6.PageRouteInfo<void> {
  const OnboardingRoute() : super(name, path: '/onboarding-screen');

  static const String name = 'OnboardingRoute';
}

/// generated route for [_i2.DashboardScreen]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: 'bottom-navigation', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for [_i2.AccountVerificationScreen]
class AccountVerificationRoute extends _i6.PageRouteInfo<void> {
  const AccountVerificationRoute()
      : super(name, path: 'account-verification-screen');

  static const String name = 'AccountVerificationRoute';
}

/// generated route for [_i2.DocumentUploadScreen]
class DocumentUploadRoute extends _i6.PageRouteInfo<void> {
  const DocumentUploadRoute() : super(name, path: 'document-upload-screen');

  static const String name = 'DocumentUploadRoute';
}

/// generated route for [_i3.EditBankDetailsScreen]
class EditBankDetailsRoute extends _i6.PageRouteInfo<void> {
  const EditBankDetailsRoute() : super(name, path: 'edit-bank-details-screen');

  static const String name = 'EditBankDetailsRoute';
}

/// generated route for [_i2.RideAcceptedScreen]
class RideAcceptedRoute extends _i6.PageRouteInfo<RideAcceptedRouteArgs> {
  RideAcceptedRoute({_i9.Key? key})
      : super(name,
            path: 'ride-accepted-screen',
            args: RideAcceptedRouteArgs(key: key));

  static const String name = 'RideAcceptedRoute';
}

class RideAcceptedRouteArgs {
  const RideAcceptedRouteArgs({this.key});

  final _i9.Key? key;
}

/// generated route for [_i2.ReferralScreen]
class ReferralRoute extends _i6.PageRouteInfo<void> {
  const ReferralRoute() : super(name, path: 'account-referral-screen');

  static const String name = 'ReferralRoute';
}

/// generated route for [_i4.NotConnectedScreen]
class NotConnectedRoute extends _i6.PageRouteInfo<NotConnectedRouteArgs> {
  NotConnectedRoute({_i9.Key? key, required _i10.Future<dynamic> future})
      : super(name,
            path: 'not-connected-screen',
            args: NotConnectedRouteArgs(key: key, future: future));

  static const String name = 'NotConnectedRoute';
}

class NotConnectedRouteArgs {
  const NotConnectedRouteArgs({this.key, required this.future});

  final _i9.Key? key;

  final _i10.Future<dynamic> future;
}

/// generated route for [_i4.NoHistoryScreen]
class NoHistoryRoute extends _i6.PageRouteInfo<void> {
  const NoHistoryRoute() : super(name, path: 'no-history-screen');

  static const String name = 'NoHistoryRoute';
}

/// generated route for [_i5.UnknownScreen]
class UnknownRoute extends _i6.PageRouteInfo<void> {
  const UnknownRoute() : super(name, path: '*');

  static const String name = 'UnknownRoute';
}

/// generated route for [_i6.EmptyRouterPage]
class HomeRouter extends _i6.PageRouteInfo<void> {
  const HomeRouter({List<_i6.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i6.EmptyRouterPage]
class HistoryRouter extends _i6.PageRouteInfo<void> {
  const HistoryRouter({List<_i6.PageRouteInfo>? children})
      : super(name, path: 'history', initialChildren: children);

  static const String name = 'HistoryRouter';
}

/// generated route for [_i6.EmptyRouterPage]
class InsightRouter extends _i6.PageRouteInfo<void> {
  const InsightRouter({List<_i6.PageRouteInfo>? children})
      : super(name, path: 'insights', initialChildren: children);

  static const String name = 'InsightRouter';
}

/// generated route for [_i6.EmptyRouterPage]
class ProfileRouter extends _i6.PageRouteInfo<void> {
  const ProfileRouter({List<_i6.PageRouteInfo>? children})
      : super(name, path: 'account', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for [_i7.HomePage]
class HomePage extends _i6.PageRouteInfo<void> {
  const HomePage() : super(name, path: '');

  static const String name = 'HomePage';
}

/// generated route for [_i7.HistoryPage]
class HistoryPage extends _i6.PageRouteInfo<void> {
  const HistoryPage() : super(name, path: '');

  static const String name = 'HistoryPage';
}

/// generated route for [_i7.InsightsPage]
class InsightsPage extends _i6.PageRouteInfo<void> {
  const InsightsPage() : super(name, path: '');

  static const String name = 'InsightsPage';
}

/// generated route for [_i7.ProfilePage]
class ProfilePage extends _i6.PageRouteInfo<void> {
  const ProfilePage() : super(name, path: '');

  static const String name = 'ProfilePage';
}
