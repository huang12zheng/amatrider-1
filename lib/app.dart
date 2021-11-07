library app.dart;

import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/onborading/presentation/managers/index.dart';
import 'package:amatrider/generated/l10n.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/manager/settings/index.dart';
import 'package:amatrider/manager/theme/theme.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:intl/intl.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AmatRider extends StatelessWidget {
  /// This is the entry point for AmatRider App
  const AmatRider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _router = getIt<AppRouter>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ThemeCubit>()),
        BlocProvider(create: (_) => getIt<OnboardingCubit>()),
        BlocProvider(create: (_) => getIt<AuthWatcherCubit>()),
        BlocProvider(create: (_) => getIt<LocationCubit>()),
        BlocProvider(create: (_) => getIt<GlobalAppPreferenceCubit>()),
      ],
      child:
          BlocSelector<GlobalAppPreferenceCubit, GlobalPreferenceState, Locale>(
        selector: (s) => s.currentLocale,
        builder: (c, __) {
          WidgetsBinding.instance!.addPostFrameCallback((_) {
            if (c.read<GlobalAppPreferenceCubit>().state.isInitalization)
              c.read<GlobalAppPreferenceCubit>().initialize();
          });

          return BlocBuilder<ThemeCubit, AppTheme>(
            builder: (_, app) => PlatformApp.router(
              title: Const.appName.capitalizeFirst(),
              debugShowCheckedModeBanner: false,
              material: (_, __) => MaterialAppRouterData(
                theme: AppTheme.light().themeData(),
                darkTheme: AppTheme.light().themeData(),
                themeMode: ThemeMode.light,
                // theme: app.themeData(),
                // darkTheme: AppTheme.dark().themeData(),
              ),
              cupertino: (_, __) => CupertinoAppRouterData(
                theme: app.cupertinoThemeData(_),
                color: Palette.accentColor,
              ),
              locale: Locale(Intl.getCurrentLocale()),
              // locale: DevicePreview.locale(context),
              // useInheritedMediaQuery: true,
              localizationsDelegates: [
                S.delegate,
                RefreshLocalizations.delegate,
                DefaultMaterialLocalizations.delegate,
                DefaultWidgetsLocalizations.delegate,
                DefaultCupertinoLocalizations.delegate,
              ],
              routeInformationParser: _router.defaultRouteParser(),
              routerDelegate: AutoRouterDelegate(
                _router,
                navigatorObservers: () => <NavigatorObserver>[
                  if (env.flavor == BuildFlavor.prod)
                    FirebaseAnalyticsObserver(
                      analytics: getIt<FirebaseAnalytics>(),
                    ),
                ],
              ),
              supportedLocales: S.delegate.supportedLocales,
              localeResolutionCallback: (locale, supportedLocales) {
                for (var supportedLocale in supportedLocales) {
                  if (supportedLocale.languageCode == locale!.languageCode &&
                      supportedLocale.countryCode == locale.countryCode) {
                    return supportedLocale;
                  }
                }
                return supportedLocales.first;
              },
              builder: (context, widget) => Utils.setup(
                context,
                _router,
                ScreenUtilInit(
                  designSize: const Size(375, 812),
                  builder: () => widget!,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
