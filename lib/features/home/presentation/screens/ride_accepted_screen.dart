library ride_accepted_screen.dart;

import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/palette.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

part '../widgets/ride_accepted_widgets.dart';

/// A stateful widget to render RideAcceptedScreen.
class RideAcceptedScreen extends StatefulWidget with AutoRouteWrapper {
  static final double _fabHeightClosed = _panelHeightClosed + 0.03.sh;
  static final double _fabHeightOpened = _panelHeightOpened + 0.03.sh;
  static final double _panelHeightClosed = 0.07.sh;
  static final double _panelHeightOpened = 0.4.sh;
  static final double _trafficHeightClosed = _fabHeightClosed + 0.09.sh;
  static final double _trafficHeightOpened = _fabHeightOpened + 0.09.sh;

  RideAcceptedScreen({Key? key}) : super(key: key);

  @override
  State<RideAcceptedScreen> createState() => _RideAcceptedScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (_) => getIt<MapCubit>(), child: this);
  }
}

class _RideAcceptedScreenState extends State<RideAcceptedScreen> {
  double _fabHeight = RideAcceptedScreen._fabHeightOpened;
  double _trafficHeight = RideAcceptedScreen._trafficHeightOpened;

  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SlidingUpPanel(
            controller: panelController,
            maxHeight: RideAcceptedScreen._panelHeightOpened,
            minHeight: RideAcceptedScreen._panelHeightClosed,
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
            onPanelSlide: (position) {
              final panelMaxScrollExtent =
                  RideAcceptedScreen._panelHeightOpened -
                      RideAcceptedScreen._panelHeightClosed;

              final newFabHeight = (position * panelMaxScrollExtent) +
                  RideAcceptedScreen._fabHeightClosed;

              final newTrafficHeight = (position * panelMaxScrollExtent) +
                  RideAcceptedScreen._trafficHeightClosed;

              setState(() {
                _fabHeight = newFabHeight;
                _trafficHeight = newTrafficHeight;
              });
            },
          ),
          //
          Positioned(
            right: 0.04.sw,
            bottom: _fabHeight,
            child: FloatingActionButton(
              tooltip: 'Your Location',
              elevation: 1.0,
              focusElevation: 1.8,
              highlightElevation: 1.8,
              backgroundColor: App.resolveColor(
                Palette.neutralF9,
                dark: Palette.secondaryColor,
              )!,
              onPressed: context.read<MapCubit>().getCurrentLocation,
              child: Icon(
                Theme.of(context).platform.fold(
                    material: () => Icons.gps_fixed_rounded,
                    cupertino: () => CupertinoIcons.location_fill),
                color: Palette.accentColor,
                size: 27,
              ),
            ),
          ),
          //
          Positioned(
            right: 0.04.sw,
            bottom: _trafficHeight,
            child: FloatingActionButton(
              tooltip: 'Toggle Traffic',
              elevation: 1.0,
              focusElevation: 1.8,
              highlightElevation: 1.8,
              backgroundColor: App.resolveColor(
                Palette.neutralF9,
                dark: Palette.secondaryColor,
              )!,
              onPressed: context.read<MapCubit>().toogleTraffic,
              child: BlocBuilder<MapCubit, MapState>(
                buildWhen: (p, c) => p.trafficEnabled != c.trafficEnabled,
                builder: (c, s) => Icon(
                  Icons.traffic_outlined,
                  color: s.trafficEnabled ? Palette.accentGreen : Colors.grey,
                  size: 27,
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: 0.02.sw,
          //   left: 0.02.sw,
          //   child: SafeArea(
          //     child: FloatingActionButton(
          //       backgroundColor: App.resolveColor(
          //         Palette.neutralF9,
          //         dark: Palette.secondaryColor,
          //       )!,
          //       onPressed: navigator.pop,
          //       child: Icon(
          //         Icons.keyboard_backspace_rounded,
          //         color: App.resolveColor(Colors.black87, dark: Colors.white),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
