import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// A stateless widget to render ReferralScreen.
class ReferralScreen extends StatelessWidget with AutoRouteWrapper {
  const ReferralScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: Center(
        child: AdaptiveText('This will be for account referral!!'),
      ),
    );
  }
}
