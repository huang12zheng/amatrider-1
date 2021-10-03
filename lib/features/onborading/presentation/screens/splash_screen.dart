import 'package:amatrider/features/onborading/presentation/managers/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<OnboardingCubit>()..startSplash(),
      child: BlocListener<OnboardingCubit, OnboardingState>(
        listenWhen: (p, c) => p.playbackEnded != c.playbackEnded,
        listener: (c, s) {
          if (s.playbackEnded)
            navigator.pushAndPopUntil(
              env.flavor.fold(
                dev: () => const DashboardRoute(),
                prod: () => const OnboardingRoute(),
              ),
              predicate: (_) => false,
            );
        },
        child: this,
      ),
    );
  }

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
                return Visibility(
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
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
