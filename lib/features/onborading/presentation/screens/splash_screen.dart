import 'dart:async';

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/onborading/presentation/managers/index.dart';
import 'package:amatrider/manager/settings/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:async/async.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();

  static void _navigateUser(BuildContext c) {
    final cubit = c.read<OnboardingCubit>();
    final watcherCubit = c.read<AuthWatcherCubit>();
    final notAllowed = [SplashRoute.name, OnboardingRoute.name, GetStartedRoute.name, 'Root'];

    cubit.subscribeToPlayback(after: () {
      mapOption(c, watcherCubit.state.status);
    });

    if (cubit.state.playbackEnded && !notAllowed.contains(App.currentRoute)) {
      mapOption(c, watcherCubit.state.status);
    }
  }

  static void mapOption(BuildContext c, Option<AppHttpResponse?> option) {
    final isFirstLaunch = c.read<GlobalAppPreferenceCubit>().isFirstAppLaunch;

    option.fold(
      () {
        if (isFirstLaunch) {
          if (App.currentRoute != OnboardingRoute.name && !navigator.stackData.map((e) => e.name).contains(OnboardingRoute.name))
            navigator.replaceAll([const OnboardingRoute()]);
        } else {
          if (App.currentRoute != GetStartedRoute.name) navigator.replaceAll([const GetStartedRoute()]);
        }
      },
      (o) {
        if (o != null)
          o.fold(
            is4031: () {
              if (App.currentRoute != OTPVerificationRoute.name) navigator.replaceAll([OTPVerificationRoute()]);
            },
            is41101: () {
              if (App.currentRoute != SocialsAuthRoute.name) navigator.replaceAll([const SocialsAuthRoute()]);
            },
            orElse: () {
              if (isFirstLaunch) {
                if (App.currentRoute != OnboardingRoute.name && !navigator.stackData.map((e) => e.name).contains(OnboardingRoute.name))
                  navigator.replaceAll([const OnboardingRoute()]);
              } else {
                if (App.currentRoute != GetStartedRoute.name) navigator.replaceAll([const GetStartedRoute()]);
              }
            },
          );
        else {
          if (App.currentRoute != DashboardRoute.name) navigator.replaceAll([const DashboardRoute()]);
        }
      },
    );
  }

  static void navigateIfNotAuthenticated() {
    if (App.currentRoute == DashboardRoute.name) {
      // Navigates the Authenticated User to the GetStarted Route "onLogout()"
      navigator.replaceAll([const GetStartedRoute()]);
    } else {
      _navigateUser(App.context);
    }
  }
}

class _SplashScreenState extends State<SplashScreen> {
  final AsyncMemoizer<dynamic> _memoizer = AsyncMemoizer();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BlocProvider.of<OnboardingCubit>(context)..startSplash(),
      child: BlocListener<OnboardingCubit, OnboardingState>(
        listenWhen: (p, c) => p.playbackEnded != c.playbackEnded,
        listener: (c, s) async {
          if (s.playbackEnded) SplashScreen._navigateUser(c);
        },
        child: AdaptiveScaffold(
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
                          (failure) => SplashScreen.navigateIfNotAuthenticated(),
                          (option) => option.fold(
                            () => SplashScreen.navigateIfNotAuthenticated(),
                            (_) {
                              final state = App.context.read<OnboardingCubit>().state;

                              if (state.playbackEnded && navigator.current.name != DashboardRoute.name) {
                                WidgetsBinding.instance!.addPostFrameCallback(
                                  (_) async => await Future.delayed(
                                    env.greetingDuration,
                                    () async {
                                      // if (App.currentRoute != DashboardRoute.name) await navigator.replaceAll([const DashboardRoute()]);
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
        ),
      ),
    );
  }
}
