import 'dart:async';

import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/onborading/presentation/managers/index.dart';
import 'package:amatrider/manager/settings/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:async/async.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget with AutoRouteWrapper {
  @override
  State<SplashScreen> createState() => _SplashScreenState();

  static void navigateIfNotAuthenticated() {
    if (navigator.current.name == DashboardRoute.name) {
      if (App.currentRoute != DashboardRoute.name && !navigator.stackData.map((e) => e.name).contains(DashboardRoute.name))
        navigator.replaceAll([const GetStartedRoute()]);
    } else {
      final isFirstAppLaunch = App.context.read<GlobalAppPreferenceCubit>().isFirstAppLaunch;

      _navigateUser(App.context, isFirstAppLaunch);
    }
  }

  static void _navigateUser(BuildContext c, bool isFirstLaunch) {
    final isAuthenticated = c.read<AuthWatcherCubit>().state.isAuthenticated;

    c.read<OnboardingCubit>().subscribeToPlayback(
      after: () async {
        if (!isFirstLaunch) {
          if (isAuthenticated) {
            if (App.currentRoute != DashboardRoute.name && !navigator.stackData.map((e) => e.name).contains(DashboardRoute.name))
              unawaited(navigator.replaceAll([const DashboardRoute()]));
          } else {
            unawaited(navigator.replaceAll([const GetStartedRoute()]));
          }
        } else {
          unawaited(navigator.replaceAll([const OnboardingRoute()]));
        }
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<OnboardingCubit>(context)..startSplash(),
      child: BlocListener<OnboardingCubit, OnboardingState>(
        listenWhen: (p, c) => p.playbackEnded != c.playbackEnded,
        listener: (c, s) async {
          final isFirstAppLaunch = c.read<GlobalAppPreferenceCubit>().isFirstAppLaunch;

          if (s.playbackEnded) _navigateUser(c, isFirstAppLaunch);
        },
        child: this,
      ),
    );
  }
}

class _SplashScreenState extends State<SplashScreen> {
  final AsyncMemoizer<dynamic> _memoizer = AsyncMemoizer();

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: SizedBox.expand(
        child: FittedBox(
          fit: BoxFit.cover,
          child: BlocBuilder<OnboardingCubit, OnboardingState>(
            builder: (c, s) {
              final controller = c.read<OnboardingCubit>().playerController;
              return FutureBuilder(
                future: _memoizer.runOnce(() async {
                  await BlocProvider.of<AuthWatcherCubit>(App.context).subscribeToAuthChanges(
                    (either) => either.fold(
                      (failure) => null,
                      (option) => option.fold(
                        () => SplashScreen.navigateIfNotAuthenticated(),
                        (_) {
                          final state = App.context.read<OnboardingCubit>().state;

                          if (state.playbackEnded && navigator.current.name != DashboardRoute.name) {
                            WidgetsBinding.instance!.addPostFrameCallback(
                              (_) async => await Future.delayed(
                                env.greetingDuration,
                                () async {
                                  if (App.currentRoute != DashboardRoute.name &&
                                      !navigator.stackData.map((e) => e.name).contains(DashboardRoute.name))
                                    await navigator.replaceAll([const DashboardRoute()]);
                                },
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  );
                }),
                builder: (_, __) => AnimatedVisibility(
                  visible: s.isVideoPlaying,
                  replacement: SizedBox.square(
                    dimension: Utils.platform_(material: 1.5.sw, cupertino: 2.sw),
                    child: Center(
                      child: Utils.circularLoader(stroke: 2.5, color: Palette.accentColor),
                    ),
                  ),
                  child: SizedBox(
                    width: 1.w,
                    height: 1.h,
                    child: Center(
                      child: controller == null ? const SizedBox.shrink() : VideoPlayer(controller),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
