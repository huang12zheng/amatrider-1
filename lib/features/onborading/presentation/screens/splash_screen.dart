import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/onborading/presentation/managers/index.dart';
import 'package:amatrider/manager/settings/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:async/async.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget with AutoRouteWrapper {
  @override
  State<SplashScreen> createState() => _SplashScreenState();

  void navigateUser(BuildContext c, bool isFirstLaunch) {
    final isAuthenticated = c.read<AuthWatcherCubit>().state.isAuthenticated;

    if (!isFirstLaunch) {
      if (isAuthenticated)
        navigator.pushAndPopUntil(const DashboardRoute(),
            predicate: (_) => false);
      else {
        if (navigator.current.name != OTPVerificationRoute.name)
          navigator.pushAndPopUntil(const GetStartedRoute(),
              predicate: (_) => false);
      }
    } else {
      navigator.pushAndPopUntil(const OnboardingRoute(),
          predicate: (_) => false);
    }
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<OnboardingCubit>(context)..startSplash(),
      child: BlocListener<OnboardingCubit, OnboardingState>(
        listenWhen: (p, c) => p.playbackEnded != c.playbackEnded,
        listener: (c, s) async {
          final isFirstAppLaunch =
              c.read<GlobalAppPreferenceCubit>().isFirstAppLaunch;

          if (s.playbackEnded) navigateUser(c, isFirstAppLaunch);
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
      body: DecoratedBox(
        decoration: const BoxDecoration(color: Palette.accentColor),
        child: SizedBox.expand(
          child: FittedBox(
            fit: BoxFit.cover,
            child: BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (c, s) {
                final controller = c.read<OnboardingCubit>().playerController;
                return FutureBuilder(
                  future: _memoizer.runOnce(() async {
                    await BlocProvider.of<AuthWatcherCubit>(App.context)
                        .subscribeToAuthChanges(
                      (either) => either.fold(
                        (failure) => failure.foldCode(
                          orElse: () => null,
                          is4031: () {
                            App.context
                                .read<OnboardingCubit>()
                                .subscribeToPlayback(
                              after: () async {
                                if (navigator.current.name !=
                                    OTPVerificationRoute.name)
                                  await navigator.pushAndPopUntil(
                                    OTPVerificationRoute(),
                                    predicate: (route) => route.isFirst,
                                  );
                              },
                            );

                            // final state =
                            //     App.context.read<OnboardingCubit>().state;
                            // if (state.playbackEnded &&
                            //     navigator.current.name !=
                            //         OTPVerificationRoute.name)
                            //   navigator.pushAndPopUntil(
                            //     OTPVerificationRoute(),
                            //     predicate: (route) => route.isFirst,
                            //   );
                          },
                        ),
                        (option) => option.fold(
                          () {
                            if (navigator.current.name == DashboardRoute.name)
                              navigator.pushAndPopUntil(const GetStartedRoute(),
                                  predicate: (route) => false);
                          },
                          (_) async {
                            final state =
                                App.context.read<OnboardingCubit>().state;

                            if (state.playbackEnded &&
                                navigator.current.name != DashboardRoute.name) {
                              WidgetsBinding.instance!.addPostFrameCallback(
                                (_) async => await Future.delayed(
                                  env.greetingDuration,
                                  () async {
                                    await navigator
                                        .replaceAll([const DashboardRoute()]);
                                  },
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    );
                  }),
                  builder: (_, __) => Visibility(
                    visible: s.isVideoPlaying,
                    replacement: SizedBox.square(
                      dimension: Theme.of(context).platform.fold(
                            material: () => 1.5.sw,
                            cupertino: () => 2.sw,
                          ),
                      child: Center(child: Utils.circularLoader(stroke: 2.5)),
                    ),
                    child: SizedBox(
                      width: 1.5.sw,
                      height: 1.5.sh,
                      child: controller != null
                          ? VideoPlayer(controller)
                          : const SizedBox.shrink(),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
