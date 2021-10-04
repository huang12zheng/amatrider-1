import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/home/presentation/pages/index.dart';
import 'package:amatrider/features/home/presentation/screens/edit_bank_details_screen.dart';
import 'package:amatrider/features/home/presentation/screens/index.dart';
import 'package:amatrider/features/onborading/presentation/screens/index.dart';
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
      page: OnboardingScreen,
    ),
    //
    dashboardRouter,
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      page: AccountVerificationScreen,
      path: 'account-verification-screen',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      page: DocumentUploadScreen,
      path: 'document-upload-screen',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      page: EditBankDetailsScreen,
      path: 'edit-bank-details-screen',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      page: RideAcceptedScreen,
      path: 'ride-accepted-screen',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      page: ReferralScreen,
      path: 'account-referral-screen',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: NotConnectedScreen,
      maintainState: true,
      path: 'not-connected-screen',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      page: NoHistoryScreen,
      path: 'no-history-screen',
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
