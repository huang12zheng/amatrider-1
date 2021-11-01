library promotions_screen.dart;

import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// A stateless widget to render PromotionsScreen.
class PromotionsScreen extends StatelessWidget with AutoRouteWrapper {
  const PromotionsScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(),
      body: Visibility(
        visible: false,
        replacement: StageOwnerWidget(
          asset: right(AppAssets.promoDiscount),
          title: 'No promotions yet.',
          description: 'Check back later.',
        ),
        child: const Center(
          child: Text('Screen Template for PromotionsScreen'),
        ),
      ),
    );
  }
}
