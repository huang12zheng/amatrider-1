import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/home/presentation/pages/index.dart';
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
      page: SplashScreen,
      maintainState: true,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: OnboardingScreen,
      maintainState: true,
    ),
    //
    dashboardRouter,
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
      page: NoHistoryScreen,
      maintainState: true,
      path: 'no-history-screen',
    ),
    //
    AdaptiveRoute(
      path: '*',
      cupertinoPageTitle: 'Error 404',
      page: UnknownScreen,
      maintainState: true,
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
