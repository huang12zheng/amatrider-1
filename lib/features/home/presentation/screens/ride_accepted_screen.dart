library ride_accepted_screen.dart;

import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

part '../widgets/ride_accepted_widgets.dart';

/// A stateless widget to render RideAcceptedScreen.
class RideAcceptedScreen extends StatelessWidget with AutoRouteWrapper {
  final panelController = PanelController();

  RideAcceptedScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: SlidingUpPanel(
        controller: panelController,
        maxHeight: 0.4.sh,
        minHeight: 0.08.sh,
        backdropEnabled: true,
        backdropTapClosesPanel: true,
        backdropColor: App.resolveColor(Colors.transparent)!,
        backdropOpacity: 0.0,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        parallaxEnabled: true,
        parallaxOffset: 0.5,
        defaultPanelState: PanelState.OPEN,
        body: const MapWidget(),
        panelBuilder: (controller) => _PanelBuilder(
          controller,
          panelController: panelController,
        ),
      ),
    );
  }
}
