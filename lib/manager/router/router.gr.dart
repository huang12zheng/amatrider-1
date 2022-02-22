// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'dart:async' as _i14;

import 'package:amatrider/_404.dart' as _i7;
import 'package:amatrider/core/presentation/index.dart' as _i6;
import 'package:amatrider/features/auth/presentation/managers/managers.dart' as _i12;
import 'package:amatrider/features/auth/presentation/screens/index.dart' as _i2;
import 'package:amatrider/features/home/domain/entities/index.dart' as _i13;
import 'package:amatrider/features/home/presentation/pages/index.dart' as _i9;
import 'package:amatrider/features/home/presentation/screens/edit_bank_details_screen.dart' as _i4;
import 'package:amatrider/features/home/presentation/screens/index.dart' as _i3;
import 'package:amatrider/features/home/presentation/widgets/index.dart' as _i5;
import 'package:amatrider/features/onborading/presentation/screens/index.dart' as _i1;
import 'package:amatrider/manager/router/guards/guards.dart' as _i11;
import 'package:amatrider/widgets/widgets.dart' as _i15;
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i10;

class AppRouter extends _i8.RootStackRouter {
  AppRouter(
      {_i10.GlobalKey<_i10.NavigatorState>? navigatorKey,
      required this.guestGuard,
      required this.incompleteKYCGuard,
      required this.authGuard,
      required this.accountVerificationGuard})
      : super(navigatorKey);

  final _i11.GuestGuard guestGuard;

  final _i11.IncompleteKYCGuard incompleteKYCGuard;

  final _i11.AuthGuard authGuard;

  final _i11.AccountVerificationGuard accountVerificationGuard;

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: _i1.SplashScreen());
    },
    OnboardingRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: _i1.OnboardingScreen());
    },
    GetStartedRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i1.GetStartedScreen(), title: 'Get Started');
    },
    LoginRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i2.LoginScreen(), title: 'Login');
    },
    SignupRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i2.SignupScreen(), title: 'Sign Up');
    },
    SocialsAuthRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i2.SocialsAuthScreen(), title: 'Continue with Socials');
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.ForgotPasswordScreen(), fullscreenDialog: true, title: 'Password Reset');
    },
    OTPVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<OTPVerificationRouteArgs>(orElse: () => const OTPVerificationRouteArgs());
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.OTPVerificationScreen(key: args.key, onEnter: args.onEnter, onBackPressed: args.onBackPressed),
          fullscreenDialog: true,
          title: 'OTP');
    },
    DashboardRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i3.DashboardScreen());
    },
    AccountVerificationRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: _i3.AccountVerificationScreen());
    },
    DocumentUploadRoute.name: (routeData) {
      final args = routeData.argsAs<DocumentUploadRouteArgs>();
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: _i3.DocumentUploadScreen(cubit: args.cubit));
    },
    SettingRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i3.SettingScreen(), title: 'Settings');
    },
    LanguageRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i3.LanguageScreen(), title: 'Language');
    },
    EditBankDetailsRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i4.EditBankDetailsScreen());
    },
    PackageDeliveryAcceptedRoute.name: (routeData) {
      final args = routeData.argsAs<PackageDeliveryAcceptedRouteArgs>();
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.PackageDeliveryAcceptedScreen(key: args.key, deliverable: args.deliverable, onDelivered: args.onDelivered));
    },
    OrderDeliveryAcceptedRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i3.OrderDeliveryAcceptedScreen());
    },
    RiderReviewRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i3.RiderReviewScreen(), title: 'Customer Feedback');
    },
    ReferralRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i3.ReferralScreen(), title: 'Invite Friends');
    },
    ContactSupportRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i3.ContactSupportScreen(), title: 'Contact Support');
    },
    PrivacyPolicyRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i3.PrivacyPolicyScreen(), title: 'Privacy Policy');
    },
    PromotionsRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i3.PromotionsScreen(), title: 'Promotions');
    },
    AccessRoute.name: (routeData) {
      final args = routeData.argsAs<AccessRouteArgs>();
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i5.AccessScreen(
              key: args.key,
              title: args.title,
              content: args.content,
              firstButtonText: args.firstButtonText,
              secondButtonText: args.secondButtonText,
              onAccept: args.onAccept,
              onWillPop: args.onWillPop,
              onDecline: args.onDecline,
              additionalContent: args.additionalContent),
          fullscreenDialog: true);
    },
    SuccessRoute.name: (routeData) {
      final args = routeData.argsAs<SuccessRouteArgs>();
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.SuccessScreen(
              key: args.key,
              svg: args.svg,
              image: args.image,
              lottieJson: args.lottieJson,
              title: args.title,
              description: args.description,
              buttonText: args.buttonText,
              animationDuration: args.animationDuration,
              fit: args.fit,
              width: args.width,
              height: args.height,
              onButtonPressed: args.onButtonPressed,
              onBackPressed: args.onBackPressed,
              onInitState: args.onInitState,
              hasAppBar: args.hasAppBar),
          fullscreenDialog: true);
    },
    NotificationRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i3.NotificationScreen(), title: 'Notifications');
    },
    NotConnectedRoute.name: (routeData) {
      final args = routeData.argsAs<NotConnectedRouteArgs>();
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: _i6.NotConnectedScreen(key: args.key, future: args.future));
    },
    NoHistoryRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i6.NoHistoryScreen());
    },
    UnknownRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: _i7.UnknownScreen(), title: 'Error 404');
    },
    HomeRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    HistoryRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    InsightRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    HomePage.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i9.HomePage());
    },
    HistoryPage.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i9.HistoryPage());
    },
    InsightsPage.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i9.InsightsPage());
    },
    ProfilePage.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(routeData: routeData, child: const _i9.ProfilePage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashRoute.name, path: '/', fullMatch: true),
        _i8.RouteConfig(OnboardingRoute.name,
            path: '/onboarding-screen', fullMatch: true, usesPathAsKey: true, guards: [guestGuard, incompleteKYCGuard]),
        _i8.RouteConfig(GetStartedRoute.name,
            path: 'get-started-screen', fullMatch: true, usesPathAsKey: true, guards: [guestGuard, incompleteKYCGuard]),
        _i8.RouteConfig(LoginRoute.name,
            path: 'login-screen', fullMatch: true, usesPathAsKey: true, guards: [guestGuard, incompleteKYCGuard]),
        _i8.RouteConfig(SignupRoute.name,
            path: 'signup-screen', fullMatch: true, usesPathAsKey: true, guards: [guestGuard, incompleteKYCGuard]),
        _i8.RouteConfig(SocialsAuthRoute.name, path: 'socials-signup-screen', fullMatch: true, usesPathAsKey: true),
        _i8.RouteConfig(ForgotPasswordRoute.name,
            path: 'forgot-password-screen', fullMatch: true, usesPathAsKey: true, guards: [guestGuard, incompleteKYCGuard]),
        _i8.RouteConfig(OTPVerificationRoute.name, path: 'otp-verification-screen', fullMatch: true, usesPathAsKey: true),
        _i8.RouteConfig(DashboardRoute.name, path: 'bottom-navigation', fullMatch: true, guards: [
          authGuard,
          incompleteKYCGuard
        ], children: [
          _i8.RouteConfig(HomeRouter.name, path: 'home', parent: DashboardRoute.name, children: [
            _i8.RouteConfig(HomePage.name, path: '', parent: HomeRouter.name),
            _i8.RouteConfig('*#redirect', path: '*', parent: HomeRouter.name, redirectTo: '', fullMatch: true)
          ]),
          _i8.RouteConfig(HistoryRouter.name, path: 'history', parent: DashboardRoute.name, children: [
            _i8.RouteConfig(HistoryPage.name, path: '', parent: HistoryRouter.name),
            _i8.RouteConfig('*#redirect', path: '*', parent: HistoryRouter.name, redirectTo: '', fullMatch: true)
          ]),
          _i8.RouteConfig(InsightRouter.name, path: 'insights', parent: DashboardRoute.name, children: [
            _i8.RouteConfig(InsightsPage.name, path: '', parent: InsightRouter.name),
            _i8.RouteConfig('*#redirect', path: '*', parent: InsightRouter.name, redirectTo: '', fullMatch: true)
          ]),
          _i8.RouteConfig(ProfileRouter.name, path: 'account', parent: DashboardRoute.name, children: [
            _i8.RouteConfig(ProfilePage.name, path: '', parent: ProfileRouter.name),
            _i8.RouteConfig('*#redirect', path: '*', parent: ProfileRouter.name, redirectTo: '', fullMatch: true)
          ])
        ]),
        _i8.RouteConfig(AccountVerificationRoute.name,
            path: 'account-verification-screen', fullMatch: true, guards: [authGuard, accountVerificationGuard]),
        _i8.RouteConfig(DocumentUploadRoute.name, path: 'document-upload-screen', fullMatch: true, guards: [authGuard]),
        _i8.RouteConfig(SettingRoute.name, path: '/setting-screen', fullMatch: true, usesPathAsKey: true, guards: [authGuard]),
        _i8.RouteConfig(LanguageRoute.name, path: '/language-screen', fullMatch: true, usesPathAsKey: true, guards: [authGuard]),
        _i8.RouteConfig(EditBankDetailsRoute.name, path: 'edit-bank-details-screen', fullMatch: true, guards: [authGuard]),
        _i8.RouteConfig(PackageDeliveryAcceptedRoute.name, path: 'package-delivery-accepted-screen', fullMatch: true, guards: [authGuard]),
        _i8.RouteConfig(OrderDeliveryAcceptedRoute.name, path: 'order-delivery-accepted-screen', fullMatch: true, guards: [authGuard]),
        _i8.RouteConfig(RiderReviewRoute.name, path: '/rider-review-screen', fullMatch: true, usesPathAsKey: true, guards: [authGuard]),
        _i8.RouteConfig(ReferralRoute.name, path: '/referral-screen', fullMatch: true, usesPathAsKey: true, guards: [authGuard]),
        _i8.RouteConfig(ContactSupportRoute.name,
            path: '/contact-support-screen', fullMatch: true, usesPathAsKey: true, guards: [authGuard]),
        _i8.RouteConfig(PrivacyPolicyRoute.name, path: '/privacy-policy-screen', fullMatch: true, usesPathAsKey: true, guards: [authGuard]),
        _i8.RouteConfig(PromotionsRoute.name, path: '/promotions-screen', fullMatch: true, usesPathAsKey: true, guards: [authGuard]),
        _i8.RouteConfig(AccessRoute.name, path: 'service-access-widget', fullMatch: true),
        _i8.RouteConfig(SuccessRoute.name, path: 'success-screen', fullMatch: true),
        _i8.RouteConfig(NotificationRoute.name, path: '/notification-screen', fullMatch: true, usesPathAsKey: true, guards: [authGuard]),
        _i8.RouteConfig(NotConnectedRoute.name, path: 'not-connected-screen', fullMatch: true, guards: [authGuard]),
        _i8.RouteConfig(NoHistoryRoute.name, path: 'no-history-screen', fullMatch: true, guards: [authGuard]),
        _i8.RouteConfig(UnknownRoute.name, path: '*')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i1.OnboardingScreen]
class OnboardingRoute extends _i8.PageRouteInfo<void> {
  const OnboardingRoute() : super(OnboardingRoute.name, path: '/onboarding-screen');

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i1.GetStartedScreen]
class GetStartedRoute extends _i8.PageRouteInfo<void> {
  const GetStartedRoute() : super(GetStartedRoute.name, path: 'get-started-screen');

  static const String name = 'GetStartedRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login-screen');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.SignupScreen]
class SignupRoute extends _i8.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: 'signup-screen');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i2.SocialsAuthScreen]
class SocialsAuthRoute extends _i8.PageRouteInfo<void> {
  const SocialsAuthRoute() : super(SocialsAuthRoute.name, path: 'socials-signup-screen');

  static const String name = 'SocialsAuthRoute';
}

/// generated route for
/// [_i2.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i8.PageRouteInfo<void> {
  const ForgotPasswordRoute() : super(ForgotPasswordRoute.name, path: 'forgot-password-screen');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i2.OTPVerificationScreen]
class OTPVerificationRoute extends _i8.PageRouteInfo<OTPVerificationRouteArgs> {
  OTPVerificationRoute({_i10.Key? key, void Function()? onEnter, void Function()? onBackPressed})
      : super(OTPVerificationRoute.name,
            path: 'otp-verification-screen', args: OTPVerificationRouteArgs(key: key, onEnter: onEnter, onBackPressed: onBackPressed));

  static const String name = 'OTPVerificationRoute';
}

class OTPVerificationRouteArgs {
  const OTPVerificationRouteArgs({this.key, this.onEnter, this.onBackPressed});

  final _i10.Key? key;

  final void Function()? onEnter;

  final void Function()? onBackPressed;

  @override
  String toString() {
    return 'OTPVerificationRouteArgs{key: $key, onEnter: $onEnter, onBackPressed: $onBackPressed}';
  }
}

/// generated route for
/// [_i3.DashboardScreen]
class DashboardRoute extends _i8.PageRouteInfo<void> {
  const DashboardRoute({List<_i8.PageRouteInfo>? children})
      : super(DashboardRoute.name, path: 'bottom-navigation', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.AccountVerificationScreen]
class AccountVerificationRoute extends _i8.PageRouteInfo<void> {
  const AccountVerificationRoute() : super(AccountVerificationRoute.name, path: 'account-verification-screen');

  static const String name = 'AccountVerificationRoute';
}

/// generated route for
/// [_i3.DocumentUploadScreen]
class DocumentUploadRoute extends _i8.PageRouteInfo<DocumentUploadRouteArgs> {
  DocumentUploadRoute({required _i12.VerificationCubit cubit})
      : super(DocumentUploadRoute.name, path: 'document-upload-screen', args: DocumentUploadRouteArgs(cubit: cubit));

  static const String name = 'DocumentUploadRoute';
}

class DocumentUploadRouteArgs {
  const DocumentUploadRouteArgs({required this.cubit});

  final _i12.VerificationCubit cubit;

  @override
  String toString() {
    return 'DocumentUploadRouteArgs{cubit: $cubit}';
  }
}

/// generated route for
/// [_i3.SettingScreen]
class SettingRoute extends _i8.PageRouteInfo<void> {
  const SettingRoute() : super(SettingRoute.name, path: '/setting-screen');

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i3.LanguageScreen]
class LanguageRoute extends _i8.PageRouteInfo<void> {
  const LanguageRoute() : super(LanguageRoute.name, path: '/language-screen');

  static const String name = 'LanguageRoute';
}

/// generated route for
/// [_i4.EditBankDetailsScreen]
class EditBankDetailsRoute extends _i8.PageRouteInfo<void> {
  const EditBankDetailsRoute() : super(EditBankDetailsRoute.name, path: 'edit-bank-details-screen');

  static const String name = 'EditBankDetailsRoute';
}

/// generated route for
/// [_i3.PackageDeliveryAcceptedScreen]
class PackageDeliveryAcceptedRoute extends _i8.PageRouteInfo<PackageDeliveryAcceptedRouteArgs> {
  PackageDeliveryAcceptedRoute({_i10.Key? key, required _i13.Logistics deliverable, void Function(_i13.Logistics)? onDelivered})
      : super(PackageDeliveryAcceptedRoute.name,
            path: 'package-delivery-accepted-screen',
            args: PackageDeliveryAcceptedRouteArgs(key: key, deliverable: deliverable, onDelivered: onDelivered));

  static const String name = 'PackageDeliveryAcceptedRoute';
}

class PackageDeliveryAcceptedRouteArgs {
  const PackageDeliveryAcceptedRouteArgs({this.key, required this.deliverable, this.onDelivered});

  final _i10.Key? key;

  final _i13.Logistics deliverable;

  final void Function(_i13.Logistics)? onDelivered;

  @override
  String toString() {
    return 'PackageDeliveryAcceptedRouteArgs{key: $key, deliverable: $deliverable, onDelivered: $onDelivered}';
  }
}

/// generated route for
/// [_i3.OrderDeliveryAcceptedScreen]
class OrderDeliveryAcceptedRoute extends _i8.PageRouteInfo<void> {
  const OrderDeliveryAcceptedRoute() : super(OrderDeliveryAcceptedRoute.name, path: 'order-delivery-accepted-screen');

  static const String name = 'OrderDeliveryAcceptedRoute';
}

/// generated route for
/// [_i3.RiderReviewScreen]
class RiderReviewRoute extends _i8.PageRouteInfo<void> {
  const RiderReviewRoute() : super(RiderReviewRoute.name, path: '/rider-review-screen');

  static const String name = 'RiderReviewRoute';
}

/// generated route for
/// [_i3.ReferralScreen]
class ReferralRoute extends _i8.PageRouteInfo<void> {
  const ReferralRoute() : super(ReferralRoute.name, path: '/referral-screen');

  static const String name = 'ReferralRoute';
}

/// generated route for
/// [_i3.ContactSupportScreen]
class ContactSupportRoute extends _i8.PageRouteInfo<void> {
  const ContactSupportRoute() : super(ContactSupportRoute.name, path: '/contact-support-screen');

  static const String name = 'ContactSupportRoute';
}

/// generated route for
/// [_i3.PrivacyPolicyScreen]
class PrivacyPolicyRoute extends _i8.PageRouteInfo<void> {
  const PrivacyPolicyRoute() : super(PrivacyPolicyRoute.name, path: '/privacy-policy-screen');

  static const String name = 'PrivacyPolicyRoute';
}

/// generated route for
/// [_i3.PromotionsScreen]
class PromotionsRoute extends _i8.PageRouteInfo<void> {
  const PromotionsRoute() : super(PromotionsRoute.name, path: '/promotions-screen');

  static const String name = 'PromotionsRoute';
}

/// generated route for
/// [_i5.AccessScreen]
class AccessRoute extends _i8.PageRouteInfo<AccessRouteArgs> {
  AccessRoute(
      {_i10.Key? key,
      required String title,
      required String content,
      String firstButtonText = 'Grant Access',
      String? secondButtonText,
      required _i14.Future<bool> Function() onAccept,
      _i14.Future<bool> Function()? onWillPop,
      _i14.Future<bool> Function()? onDecline,
      _i15.AdaptiveText? additionalContent})
      : super(AccessRoute.name,
            path: 'service-access-widget',
            args: AccessRouteArgs(
                key: key,
                title: title,
                content: content,
                firstButtonText: firstButtonText,
                secondButtonText: secondButtonText,
                onAccept: onAccept,
                onWillPop: onWillPop,
                onDecline: onDecline,
                additionalContent: additionalContent));

  static const String name = 'AccessRoute';
}

class AccessRouteArgs {
  const AccessRouteArgs(
      {this.key,
      required this.title,
      required this.content,
      this.firstButtonText = 'Grant Access',
      this.secondButtonText,
      required this.onAccept,
      this.onWillPop,
      this.onDecline,
      this.additionalContent});

  final _i10.Key? key;

  final String title;

  final String content;

  final String firstButtonText;

  final String? secondButtonText;

  final _i14.Future<bool> Function() onAccept;

  final _i14.Future<bool> Function()? onWillPop;

  final _i14.Future<bool> Function()? onDecline;

  final _i15.AdaptiveText? additionalContent;

  @override
  String toString() {
    return 'AccessRouteArgs{key: $key, title: $title, content: $content, firstButtonText: $firstButtonText, secondButtonText: $secondButtonText, onAccept: $onAccept, onWillPop: $onWillPop, onDecline: $onDecline, additionalContent: $additionalContent}';
  }
}

/// generated route for
/// [_i6.SuccessScreen]
class SuccessRoute extends _i8.PageRouteInfo<SuccessRouteArgs> {
  SuccessRoute(
      {_i10.Key? key,
      _i10.Widget? svg,
      _i10.Widget? image,
      String? lottieJson,
      required String title,
      String? description,
      String? buttonText,
      Duration animationDuration = const Duration(milliseconds: 1600),
      _i10.BoxFit fit = _i10.BoxFit.cover,
      double? width,
      double? height,
      void Function()? onButtonPressed,
      void Function()? onBackPressed,
      _i14.Future<void> Function()? onInitState,
      bool hasAppBar = false})
      : super(SuccessRoute.name,
            path: 'success-screen',
            args: SuccessRouteArgs(
                key: key,
                svg: svg,
                image: image,
                lottieJson: lottieJson,
                title: title,
                description: description,
                buttonText: buttonText,
                animationDuration: animationDuration,
                fit: fit,
                width: width,
                height: height,
                onButtonPressed: onButtonPressed,
                onBackPressed: onBackPressed,
                onInitState: onInitState,
                hasAppBar: hasAppBar));

  static const String name = 'SuccessRoute';
}

class SuccessRouteArgs {
  const SuccessRouteArgs(
      {this.key,
      this.svg,
      this.image,
      this.lottieJson,
      required this.title,
      this.description,
      this.buttonText,
      this.animationDuration = const Duration(milliseconds: 1600),
      this.fit = _i10.BoxFit.cover,
      this.width,
      this.height,
      this.onButtonPressed,
      this.onBackPressed,
      this.onInitState,
      this.hasAppBar = false});

  final _i10.Key? key;

  final _i10.Widget? svg;

  final _i10.Widget? image;

  final String? lottieJson;

  final String title;

  final String? description;

  final String? buttonText;

  final Duration animationDuration;

  final _i10.BoxFit fit;

  final double? width;

  final double? height;

  final void Function()? onButtonPressed;

  final void Function()? onBackPressed;

  final _i14.Future<void> Function()? onInitState;

  final bool hasAppBar;

  @override
  String toString() {
    return 'SuccessRouteArgs{key: $key, svg: $svg, image: $image, lottieJson: $lottieJson, title: $title, description: $description, buttonText: $buttonText, animationDuration: $animationDuration, fit: $fit, width: $width, height: $height, onButtonPressed: $onButtonPressed, onBackPressed: $onBackPressed, onInitState: $onInitState, hasAppBar: $hasAppBar}';
  }
}

/// generated route for
/// [_i3.NotificationScreen]
class NotificationRoute extends _i8.PageRouteInfo<void> {
  const NotificationRoute() : super(NotificationRoute.name, path: '/notification-screen');

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [_i6.NotConnectedScreen]
class NotConnectedRoute extends _i8.PageRouteInfo<NotConnectedRouteArgs> {
  NotConnectedRoute({_i10.Key? key, required _i14.Future<dynamic> future})
      : super(NotConnectedRoute.name, path: 'not-connected-screen', args: NotConnectedRouteArgs(key: key, future: future));

  static const String name = 'NotConnectedRoute';
}

class NotConnectedRouteArgs {
  const NotConnectedRouteArgs({this.key, required this.future});

  final _i10.Key? key;

  final _i14.Future<dynamic> future;

  @override
  String toString() {
    return 'NotConnectedRouteArgs{key: $key, future: $future}';
  }
}

/// generated route for
/// [_i6.NoHistoryScreen]
class NoHistoryRoute extends _i8.PageRouteInfo<void> {
  const NoHistoryRoute() : super(NoHistoryRoute.name, path: 'no-history-screen');

  static const String name = 'NoHistoryRoute';
}

/// generated route for
/// [_i7.UnknownScreen]
class UnknownRoute extends _i8.PageRouteInfo<void> {
  const UnknownRoute() : super(UnknownRoute.name, path: '*');

  static const String name = 'UnknownRoute';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class HomeRouter extends _i8.PageRouteInfo<void> {
  const HomeRouter({List<_i8.PageRouteInfo>? children}) : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class HistoryRouter extends _i8.PageRouteInfo<void> {
  const HistoryRouter({List<_i8.PageRouteInfo>? children}) : super(HistoryRouter.name, path: 'history', initialChildren: children);

  static const String name = 'HistoryRouter';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class InsightRouter extends _i8.PageRouteInfo<void> {
  const InsightRouter({List<_i8.PageRouteInfo>? children}) : super(InsightRouter.name, path: 'insights', initialChildren: children);

  static const String name = 'InsightRouter';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class ProfileRouter extends _i8.PageRouteInfo<void> {
  const ProfileRouter({List<_i8.PageRouteInfo>? children}) : super(ProfileRouter.name, path: 'account', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i9.HomePage]
class HomePage extends _i8.PageRouteInfo<void> {
  const HomePage() : super(HomePage.name, path: '');

  static const String name = 'HomePage';
}

/// generated route for
/// [_i9.HistoryPage]
class HistoryPage extends _i8.PageRouteInfo<void> {
  const HistoryPage() : super(HistoryPage.name, path: '');

  static const String name = 'HistoryPage';
}

/// generated route for
/// [_i9.InsightsPage]
class InsightsPage extends _i8.PageRouteInfo<void> {
  const InsightsPage() : super(InsightsPage.name, path: '');

  static const String name = 'InsightsPage';
}

/// generated route for
/// [_i9.ProfilePage]
class ProfilePage extends _i8.PageRouteInfo<void> {
  const ProfilePage() : super(ProfilePage.name, path: '');

  static const String name = 'ProfilePage';
}
