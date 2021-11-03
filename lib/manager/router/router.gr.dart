// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'dart:async' as _i14;

import 'package:amatrider/_404.dart' as _i6;
import 'package:amatrider/core/presentation/index.dart' as _i5;
import 'package:amatrider/features/auth/presentation/managers/managers.dart'
    as _i12;
import 'package:amatrider/features/auth/presentation/screens/index.dart' as _i2;
import 'package:amatrider/features/home/domain/entities/index.dart' as _i13;
import 'package:amatrider/features/home/presentation/pages/index.dart' as _i8;
import 'package:amatrider/features/home/presentation/screens/edit_bank_details_screen.dart'
    as _i4;
import 'package:amatrider/features/home/presentation/screens/index.dart' as _i3;
import 'package:amatrider/features/onborading/presentation/screens/index.dart'
    as _i1;
import 'package:amatrider/manager/router/guards/guards.dart' as _i10;
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/cupertino.dart' as _i11;
import 'package:flutter/material.dart' as _i9;

class AppRouter extends _i7.RootStackRouter {
  AppRouter(
      {_i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
      required this.guestGuard,
      required this.authGuard})
      : super(navigatorKey);

  final _i10.GuestGuard guestGuard;

  final _i10.AuthGuard authGuard;

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.SplashScreen());
    },
    OnboardingRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.OnboardingScreen());
    },
    GetStartedRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i1.GetStartedScreen(),
          title: 'Get Started');
    },
    LoginRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen(), title: 'Login');
    },
    SignupRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i2.SignupScreen(),
          title: 'Sign Up');
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i2.ForgotPasswordScreen(),
          fullscreenDialog: true,
          title: 'Password Reset');
    },
    OTPVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<OTPVerificationRouteArgs>(
          orElse: () => const OTPVerificationRouteArgs());
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.OTPVerificationScreen(key: args.key, type: args.type),
          fullscreenDialog: true,
          title: 'OTP');
    },
    DashboardRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.DashboardScreen());
    },
    AccountVerificationRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.AccountVerificationScreen());
    },
    DocumentUploadRoute.name: (routeData) {
      final args = routeData.argsAs<DocumentUploadRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.DocumentUploadScreen(key: args.key, cubit: args.cubit));
    },
    SettingRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i3.SettingScreen(),
          title: 'Settings');
    },
    LanguageRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i3.LanguageScreen(),
          title: 'Language');
    },
    EditBankDetailsRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.EditBankDetailsScreen());
    },
    PackageDeliveryAcceptedRoute.name: (routeData) {
      final args = routeData.argsAs<PackageDeliveryAcceptedRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.PackageDeliveryAcceptedScreen(
              key: args.key, sendPackage: args.sendPackage));
    },
    OrderDeliveryAcceptedRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.OrderDeliveryAcceptedScreen());
    },
    ReferralRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i3.ReferralScreen(),
          title: 'Invite Friends');
    },
    ContactSupportRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i3.ContactSupportScreen(),
          title: 'Contact Support');
    },
    PrivacyPolicyRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i3.PrivacyPolicyScreen(),
          title: 'Privacy Policy');
    },
    PromotionsRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i3.PromotionsScreen(),
          title: 'Promotions');
    },
    NotificationRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i3.NotificationScreen(),
          title: 'Notifications');
    },
    NotConnectedRoute.name: (routeData) {
      final args = routeData.argsAs<NotConnectedRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i5.NotConnectedScreen(key: args.key, future: args.future));
    },
    NoHistoryRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.NoHistoryScreen());
    },
    UnknownRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: _i6.UnknownScreen(), title: 'Error 404');
    },
    HomeRouter.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.EmptyRouterPage());
    },
    HistoryRouter.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.EmptyRouterPage());
    },
    InsightRouter.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.EmptyRouterPage());
    },
    HomePage.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.HomePage());
    },
    HistoryPage.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.HistoryPage());
    },
    InsightsPage.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.InsightsPage());
    },
    ProfilePage.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.ProfilePage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashRoute.name, path: '/', fullMatch: true),
        _i7.RouteConfig(OnboardingRoute.name,
            path: '/onboarding-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [guestGuard]),
        _i7.RouteConfig(GetStartedRoute.name,
            path: 'get-started-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [guestGuard]),
        _i7.RouteConfig(LoginRoute.name,
            path: 'login-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [guestGuard]),
        _i7.RouteConfig(SignupRoute.name,
            path: 'signup-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [guestGuard]),
        _i7.RouteConfig(ForgotPasswordRoute.name,
            path: 'forgot-password-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [guestGuard]),
        _i7.RouteConfig(OTPVerificationRoute.name,
            path: 'otp-verification-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [guestGuard, authGuard]),
        _i7.RouteConfig(DashboardRoute.name,
            path: 'bottom-navigation',
            fullMatch: true,
            guards: [
              authGuard
            ],
            children: [
              _i7.RouteConfig(HomeRouter.name,
                  path: 'home',
                  parent: DashboardRoute.name,
                  children: [
                    _i7.RouteConfig(HomePage.name,
                        path: '', parent: HomeRouter.name),
                    _i7.RouteConfig('*#redirect',
                        path: '*',
                        parent: HomeRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i7.RouteConfig(HistoryRouter.name,
                  path: 'history',
                  parent: DashboardRoute.name,
                  children: [
                    _i7.RouteConfig(HistoryPage.name,
                        path: '', parent: HistoryRouter.name),
                    _i7.RouteConfig('*#redirect',
                        path: '*',
                        parent: HistoryRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i7.RouteConfig(InsightRouter.name,
                  path: 'insights',
                  parent: DashboardRoute.name,
                  children: [
                    _i7.RouteConfig(InsightsPage.name,
                        path: '', parent: InsightRouter.name),
                    _i7.RouteConfig('*#redirect',
                        path: '*',
                        parent: InsightRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i7.RouteConfig(ProfileRouter.name,
                  path: 'account',
                  parent: DashboardRoute.name,
                  children: [
                    _i7.RouteConfig(ProfilePage.name,
                        path: '', parent: ProfileRouter.name),
                    _i7.RouteConfig('*#redirect',
                        path: '*',
                        parent: ProfileRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ])
            ]),
        _i7.RouteConfig(AccountVerificationRoute.name,
            path: 'account-verification-screen',
            fullMatch: true,
            guards: [authGuard]),
        _i7.RouteConfig(DocumentUploadRoute.name,
            path: 'document-upload-screen',
            fullMatch: true,
            guards: [authGuard]),
        _i7.RouteConfig(SettingRoute.name,
            path: '/setting-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [authGuard]),
        _i7.RouteConfig(LanguageRoute.name,
            path: '/language-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [authGuard]),
        _i7.RouteConfig(EditBankDetailsRoute.name,
            path: 'edit-bank-details-screen',
            fullMatch: true,
            guards: [authGuard]),
        _i7.RouteConfig(PackageDeliveryAcceptedRoute.name,
            path: 'package-delivery-accepted-screen',
            fullMatch: true,
            guards: [authGuard]),
        _i7.RouteConfig(OrderDeliveryAcceptedRoute.name,
            path: 'order-delivery-accepted-screen',
            fullMatch: true,
            guards: [authGuard]),
        _i7.RouteConfig(ReferralRoute.name,
            path: '/referral-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [authGuard]),
        _i7.RouteConfig(ContactSupportRoute.name,
            path: '/contact-support-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [authGuard]),
        _i7.RouteConfig(PrivacyPolicyRoute.name,
            path: '/privacy-policy-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [authGuard]),
        _i7.RouteConfig(PromotionsRoute.name,
            path: '/promotions-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [authGuard]),
        _i7.RouteConfig(NotificationRoute.name,
            path: '/notification-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [authGuard]),
        _i7.RouteConfig(NotConnectedRoute.name,
            path: 'not-connected-screen', fullMatch: true, guards: [authGuard]),
        _i7.RouteConfig(NoHistoryRoute.name,
            path: 'no-history-screen', fullMatch: true, guards: [authGuard]),
        _i7.RouteConfig(UnknownRoute.name, path: '*')
      ];
}

/// generated route for [_i1.SplashScreen]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i1.OnboardingScreen]
class OnboardingRoute extends _i7.PageRouteInfo<void> {
  const OnboardingRoute() : super(name, path: '/onboarding-screen');

  static const String name = 'OnboardingRoute';
}

/// generated route for [_i1.GetStartedScreen]
class GetStartedRoute extends _i7.PageRouteInfo<void> {
  const GetStartedRoute() : super(name, path: 'get-started-screen');

  static const String name = 'GetStartedRoute';
}

/// generated route for [_i2.LoginScreen]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: 'login-screen');

  static const String name = 'LoginRoute';
}

/// generated route for [_i2.SignupScreen]
class SignupRoute extends _i7.PageRouteInfo<void> {
  const SignupRoute() : super(name, path: 'signup-screen');

  static const String name = 'SignupRoute';
}

/// generated route for [_i2.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i7.PageRouteInfo<void> {
  const ForgotPasswordRoute() : super(name, path: 'forgot-password-screen');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for [_i2.OTPVerificationScreen]
class OTPVerificationRoute extends _i7.PageRouteInfo<OTPVerificationRouteArgs> {
  OTPVerificationRoute(
      {_i11.Key? key,
      _i2.OTPVerificationType? type = _i2.OTPVerificationType.phoneNumber})
      : super(name,
            path: 'otp-verification-screen',
            args: OTPVerificationRouteArgs(key: key, type: type));

  static const String name = 'OTPVerificationRoute';
}

class OTPVerificationRouteArgs {
  const OTPVerificationRouteArgs(
      {this.key, this.type = _i2.OTPVerificationType.phoneNumber});

  final _i11.Key? key;

  final _i2.OTPVerificationType? type;
}

/// generated route for [_i3.DashboardScreen]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
      : super(name, path: 'bottom-navigation', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for [_i3.AccountVerificationScreen]
class AccountVerificationRoute extends _i7.PageRouteInfo<void> {
  const AccountVerificationRoute()
      : super(name, path: 'account-verification-screen');

  static const String name = 'AccountVerificationRoute';
}

/// generated route for [_i3.DocumentUploadScreen]
class DocumentUploadRoute extends _i7.PageRouteInfo<DocumentUploadRouteArgs> {
  DocumentUploadRoute({_i11.Key? key, required _i12.VerificationCubit cubit})
      : super(name,
            path: 'document-upload-screen',
            args: DocumentUploadRouteArgs(key: key, cubit: cubit));

  static const String name = 'DocumentUploadRoute';
}

class DocumentUploadRouteArgs {
  const DocumentUploadRouteArgs({this.key, required this.cubit});

  final _i11.Key? key;

  final _i12.VerificationCubit cubit;
}

/// generated route for [_i3.SettingScreen]
class SettingRoute extends _i7.PageRouteInfo<void> {
  const SettingRoute() : super(name, path: '/setting-screen');

  static const String name = 'SettingRoute';
}

/// generated route for [_i3.LanguageScreen]
class LanguageRoute extends _i7.PageRouteInfo<void> {
  const LanguageRoute() : super(name, path: '/language-screen');

  static const String name = 'LanguageRoute';
}

/// generated route for [_i4.EditBankDetailsScreen]
class EditBankDetailsRoute extends _i7.PageRouteInfo<void> {
  const EditBankDetailsRoute() : super(name, path: 'edit-bank-details-screen');

  static const String name = 'EditBankDetailsRoute';
}

/// generated route for [_i3.PackageDeliveryAcceptedScreen]
class PackageDeliveryAcceptedRoute
    extends _i7.PageRouteInfo<PackageDeliveryAcceptedRouteArgs> {
  PackageDeliveryAcceptedRoute(
      {_i11.Key? key, required _i13.SendPackage sendPackage})
      : super(name,
            path: 'package-delivery-accepted-screen',
            args: PackageDeliveryAcceptedRouteArgs(
                key: key, sendPackage: sendPackage));

  static const String name = 'PackageDeliveryAcceptedRoute';
}

class PackageDeliveryAcceptedRouteArgs {
  const PackageDeliveryAcceptedRouteArgs({this.key, required this.sendPackage});

  final _i11.Key? key;

  final _i13.SendPackage sendPackage;
}

/// generated route for [_i3.OrderDeliveryAcceptedScreen]
class OrderDeliveryAcceptedRoute extends _i7.PageRouteInfo<void> {
  const OrderDeliveryAcceptedRoute()
      : super(name, path: 'order-delivery-accepted-screen');

  static const String name = 'OrderDeliveryAcceptedRoute';
}

/// generated route for [_i3.ReferralScreen]
class ReferralRoute extends _i7.PageRouteInfo<void> {
  const ReferralRoute() : super(name, path: '/referral-screen');

  static const String name = 'ReferralRoute';
}

/// generated route for [_i3.ContactSupportScreen]
class ContactSupportRoute extends _i7.PageRouteInfo<void> {
  const ContactSupportRoute() : super(name, path: '/contact-support-screen');

  static const String name = 'ContactSupportRoute';
}

/// generated route for [_i3.PrivacyPolicyScreen]
class PrivacyPolicyRoute extends _i7.PageRouteInfo<void> {
  const PrivacyPolicyRoute() : super(name, path: '/privacy-policy-screen');

  static const String name = 'PrivacyPolicyRoute';
}

/// generated route for [_i3.PromotionsScreen]
class PromotionsRoute extends _i7.PageRouteInfo<void> {
  const PromotionsRoute() : super(name, path: '/promotions-screen');

  static const String name = 'PromotionsRoute';
}

/// generated route for [_i3.NotificationScreen]
class NotificationRoute extends _i7.PageRouteInfo<void> {
  const NotificationRoute() : super(name, path: '/notification-screen');

  static const String name = 'NotificationRoute';
}

/// generated route for [_i5.NotConnectedScreen]
class NotConnectedRoute extends _i7.PageRouteInfo<NotConnectedRouteArgs> {
  NotConnectedRoute({_i11.Key? key, required _i14.Future<dynamic> future})
      : super(name,
            path: 'not-connected-screen',
            args: NotConnectedRouteArgs(key: key, future: future));

  static const String name = 'NotConnectedRoute';
}

class NotConnectedRouteArgs {
  const NotConnectedRouteArgs({this.key, required this.future});

  final _i11.Key? key;

  final _i14.Future<dynamic> future;
}

/// generated route for [_i5.NoHistoryScreen]
class NoHistoryRoute extends _i7.PageRouteInfo<void> {
  const NoHistoryRoute() : super(name, path: 'no-history-screen');

  static const String name = 'NoHistoryRoute';
}

/// generated route for [_i6.UnknownScreen]
class UnknownRoute extends _i7.PageRouteInfo<void> {
  const UnknownRoute() : super(name, path: '*');

  static const String name = 'UnknownRoute';
}

/// generated route for [_i7.EmptyRouterPage]
class HomeRouter extends _i7.PageRouteInfo<void> {
  const HomeRouter({List<_i7.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i7.EmptyRouterPage]
class HistoryRouter extends _i7.PageRouteInfo<void> {
  const HistoryRouter({List<_i7.PageRouteInfo>? children})
      : super(name, path: 'history', initialChildren: children);

  static const String name = 'HistoryRouter';
}

/// generated route for [_i7.EmptyRouterPage]
class InsightRouter extends _i7.PageRouteInfo<void> {
  const InsightRouter({List<_i7.PageRouteInfo>? children})
      : super(name, path: 'insights', initialChildren: children);

  static const String name = 'InsightRouter';
}

/// generated route for [_i7.EmptyRouterPage]
class ProfileRouter extends _i7.PageRouteInfo<void> {
  const ProfileRouter({List<_i7.PageRouteInfo>? children})
      : super(name, path: 'account', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for [_i8.HomePage]
class HomePage extends _i7.PageRouteInfo<void> {
  const HomePage() : super(name, path: '');

  static const String name = 'HomePage';
}

/// generated route for [_i8.HistoryPage]
class HistoryPage extends _i7.PageRouteInfo<void> {
  const HistoryPage() : super(name, path: '');

  static const String name = 'HistoryPage';
}

/// generated route for [_i8.InsightsPage]
class InsightsPage extends _i7.PageRouteInfo<void> {
  const InsightsPage() : super(name, path: '');

  static const String name = 'InsightsPage';
}

/// generated route for [_i8.ProfilePage]
class ProfilePage extends _i7.PageRouteInfo<void> {
  const ProfilePage() : super(name, path: '');

  static const String name = 'ProfilePage';
}
