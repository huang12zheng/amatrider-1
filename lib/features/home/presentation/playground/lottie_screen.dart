library lottie_screen.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// A stateless widget to render LottieScreen.
class LottieScreen extends StatelessWidget with AutoRouteWrapper {
  const LottieScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          AppAssets.test01,
          fit: BoxFit.contain,
          // options: LottieOptions(enableMergePaths: true),
          animate: true,
        ),
      ),
    );
  }
}
