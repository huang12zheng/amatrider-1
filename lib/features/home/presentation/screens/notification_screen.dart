library notification_screen.dart;

import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// A stateless widget to render NotificationScreen.
class NotificationScreen extends StatelessWidget with AutoRouteWrapper {
  const NotificationScreen({Key? key}) : super(key: key);

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
          asset: right(AppAssets.balloons),
          title: 'Your’e all caught up!',
        ),
        child: const Center(
          child: Text('Screen Template for NotificationScreen'),
        ),
      ),
    );
  }
}
