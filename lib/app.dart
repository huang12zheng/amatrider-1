import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/manager/theme/theme.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_portal/flutter_portal.dart';

class AmatRider extends StatelessWidget {
  /// This is the entry point for AmatRider App
  const AmatRider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _router = getIt<AppRouter>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ThemeCubit>()),
        // BlocProvider(create: (_) => getIt<AuthWatcherCubit>()),
      ],
      child: BlocBuilder<ThemeCubit, AppTheme>(
        builder: (context, app) => Portal(
          child: PlatformApp.router(
            title: Const.appName.capitalizeFirst(),
            debugShowCheckedModeBanner: false,
            material: (_, __) => MaterialAppRouterData(
              theme: app.themeData(),
              darkTheme: AppTheme.dark().themeData(),
            ),
            cupertino: (_, __) => CupertinoAppRouterData(
              theme: app.cupertinoThemeData(_),
              color: Palette.accentColor,
            ),
            locale: env.flavor.fold(
              dev: () => DevicePreview.locale(context),
              prod: () => null,
            ),
            localizationsDelegates: [
              DefaultCupertinoLocalizations.delegate,
              DefaultMaterialLocalizations.delegate,
              DefaultWidgetsLocalizations.delegate,
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
            builder: (context, widget) => DevicePreview.appBuilder(
              context,
              Utils.setup(
                context,
                _router,
                ScreenUtilInit(
                  designSize: const Size(375, 812),
                  builder: () => widget!,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
