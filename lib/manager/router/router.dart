import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/auth/presentation/screens/index.dart';
import 'package:amatrider/features/home/presentation/pages/index.dart';
import 'package:amatrider/features/home/presentation/screens/edit_bank_details_screen.dart';
import 'package:amatrider/features/home/presentation/screens/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/features/onborading/presentation/screens/index.dart';
import 'package:amatrider/manager/router/guards/guards.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:amatrider/_404.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  preferRelativeImports: false,
  routes: <AutoRoute<dynamic>>[
    AdaptiveRoute(
      initial: true,
      fullMatch: true,
      maintainState: true,
      page: SplashScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: OnboardingScreen,
      guards: [GuestGuard],
    ),
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: GetStartedScreen,
      path: 'get-started-screen',
      cupertinoPageTitle: 'Get Started',
      guards: [GuestGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: LoginScreen,
      path: 'login-screen',
      cupertinoPageTitle: 'Login',
      guards: [GuestGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      path: 'signup-screen',
      page: SignupScreen,
      cupertinoPageTitle: 'Sign Up',
      guards: [GuestGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      page: ForgotPasswordScreen,
      path: 'forgot-password-screen',
      cupertinoPageTitle: 'Password Reset',
      guards: [GuestGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      fullscreenDialog: true,
      maintainState: true,
      usesPathAsKey: true,
      page: OTPVerificationScreen,
      path: 'otp-verification-screen',
      cupertinoPageTitle: 'OTP',
      guards: [GuestGuard, AuthGuard],
    ),
    //
    dashboardRouter,
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      page: AccountVerificationScreen,
      path: 'account-verification-screen',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      page: DocumentUploadScreen,
      path: 'document-upload-screen',
      guards: [AuthGuard],
    ),
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: SettingScreen,
      cupertinoPageTitle: 'Settings',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: LanguageScreen,
      cupertinoPageTitle: 'Language',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      page: EditBankDetailsScreen,
      path: 'edit-bank-details-screen',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      page: PackageDeliveryAcceptedScreen,
      path: 'package-delivery-accepted-screen',
      guards: [AuthGuard],
    ),
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      page: OrderDeliveryAcceptedScreen,
      path: 'order-delivery-accepted-screen',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: RiderReviewScreen,
      cupertinoPageTitle: 'Customer Feedback',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: ReferralScreen,
      cupertinoPageTitle: 'Invite Friends',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: ContactSupportScreen,
      cupertinoPageTitle: 'Contact Support',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: PrivacyPolicyScreen,
      cupertinoPageTitle: 'Privacy Policy',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: PromotionsScreen,
      cupertinoPageTitle: 'Promotions',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      fullscreenDialog: true,
      page: AccessScreen,
      path: 'service-access-widget',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      fullscreenDialog: true,
      page: SuccessScreen,
      path: 'success-screen',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: NotificationScreen,
      cupertinoPageTitle: 'Notifications',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: NotConnectedScreen,
      maintainState: true,
      path: 'not-connected-screen',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      page: NoHistoryScreen,
      path: 'no-history-screen',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      path: '*',
      maintainState: true,
      cupertinoPageTitle: 'Error 404',
      page: UnknownScreen,
    ),
  ],
)
class $AppRouter {}

const dashboardRouter = AutoRoute(
  path: 'bottom-navigation',
  fullMatch: true,
  page: DashboardScreen,
  maintainState: true,
  guards: [AuthGuard],
  children: [
    AutoRoute(
      path: 'home',
      name: 'HomeRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: HomePage),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    //
    AutoRoute(
      path: 'history',
      name: 'HistoryRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: HistoryPage),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    //
    AutoRoute(
      path: 'insights',
      name: 'InsightRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: InsightsPage),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    //
    AutoRoute(
      path: 'account',
      name: 'ProfileRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: ProfilePage),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
  ],
);
