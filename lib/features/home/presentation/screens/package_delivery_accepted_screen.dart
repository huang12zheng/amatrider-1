library package_delivery_accepted_screen.dart;

import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/palette.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:url_launcher/url_launcher.dart';

part '../widgets/package_delivery/_issue_bottom_sheet.dart';
part '../widgets/package_delivery/_package_delivery_widgets.dart';

/// A stateless widget to render PackageDeliveryAcceptedScreen.
class PackageDeliveryAcceptedScreen extends StatefulWidget
    with AutoRouteWrapper {
  static final double _fabHeightClosed = _panelHeightClosed + 0.03.h;
  static final double _fabHeightOpened = _panelHeightOpened + 0.03.h;
  static final double _panelHeightClosed = 0.39.h;
  static final double _panelHeightOpened = 0.5.h;
  static final double _trafficHeightClosed = _fabHeightClosed + 0.09.h;
  static final double _trafficHeightOpened = _fabHeightOpened + 0.09.h;
  static final double _buttonBottom = 0.029.h;
  static final double _buttonHeight = 0.06.h;
  static final double _totalBottom = _buttonHeight + 0.026.h;

  final SendPackage sendPackage;

  const PackageDeliveryAcceptedScreen({Key? key, required this.sendPackage})
      : super(key: key);

  @override
  State<PackageDeliveryAcceptedScreen> createState() =>
      _PackageDeliveryAcceptedScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<MapCubit>()),
        BlocProvider(
          create: (_) => getIt<SendPackageCubit>()..init(sendPackage),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SendPackageCubit, SendPackageState>(
            listenWhen: (p, c) => c.package.status
                .maybeWhen(delivered: () => true, orElse: () => false),
            listener: (c, s) {
              Future.delayed(const Duration(milliseconds: 500), () {
                if (navigator.current.name == PackageDeliveryAcceptedRoute.name)
                  navigator.popUntil(
                      (route) => route.settings.name == DashboardRoute.name);
              });
            },
          ),
          //
          BlocListener<SendPackageCubit, SendPackageState>(
            listenWhen: (p, c) =>
                p.status.getOrElse(() => null) !=
                    c.status.getOrElse(() => null) ||
                (c.status.getOrElse(() => null) != null &&
                    (c.status.getOrElse(() => null)!.response.maybeMap(
                          error: (f) => f.foldCode(orElse: () => false),
                          orElse: () => false,
                        ))),
            listener: (c, s) => s.status.fold(
              () => null,
              (it) => it?.response.map(
                error: (f) => PopupDialog.error(message: f.message).render(c),
                success: (res) => PopupDialog.success(
                  duration: const Duration(seconds: 2),
                  message: res.message,
                ).render(c),
              ),
            ),
          ),
        ],
        child: this,
      ),
    );
  }
}

class _PackageDeliveryAcceptedScreenState
    extends State<PackageDeliveryAcceptedScreen>
    with AutomaticKeepAliveClientMixin<PackageDeliveryAcceptedScreen> {
  double _fabHeight = PackageDeliveryAcceptedScreen._fabHeightOpened;
  double _trafficHeight = PackageDeliveryAcceptedScreen._trafficHeightOpened;

  final panelController = PanelController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return SafeArea(
      top: false,
      left: false,
      right: false,
      child: AdaptiveScaffold(
        body: Stack(
          children: [
            SlidingUpPanel(
              controller: panelController,
              maxHeight: PackageDeliveryAcceptedScreen._panelHeightOpened,
              minHeight: PackageDeliveryAcceptedScreen._panelHeightClosed,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(24)),
              parallaxEnabled: true,
              parallaxOffset: 0.5,
              defaultPanelState: PanelState.OPEN,
              body: const _Body(),
              panelBuilder: (controller) => _PanelBuilder(
                controller,
                panelController: panelController,
              ),
              onPanelSlide: (position) {
                final panelMaxScrollExtent =
                    PackageDeliveryAcceptedScreen._panelHeightOpened -
                        PackageDeliveryAcceptedScreen._panelHeightClosed;

                final newFabHeight = (position * panelMaxScrollExtent) +
                    PackageDeliveryAcceptedScreen._fabHeightClosed;

                final newTrafficHeight = (position * panelMaxScrollExtent) +
                    PackageDeliveryAcceptedScreen._trafficHeightClosed;

                setState(() {
                  _fabHeight = newFabHeight;
                  _trafficHeight = newTrafficHeight;
                });
              },
            ),
            //
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: App.resolveColor(
                    Palette.cardColorLight,
                    dark: Palette.cardColorDark,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding)
                      .copyWith(
                          bottom: PackageDeliveryAcceptedScreen._buttonBottom),
                  child: BlocBuilder<SendPackageCubit, SendPackageState>(
                    builder: (c, s) => s.package.status.between(
                      start: () => AppButton(
                        text: 'Confirm Pickup',
                        isLoading: s.isLoading,
                        onPressed: () {
                          if (!s.isLoading)
                            App.showAlertDialog(
                              context: context,
                              barrierColor: App.resolveColor(
                                Colors.grey.shade800.withOpacity(0.55),
                                dark: Colors.white54,
                              ),
                              builder: (_) => AdaptiveAlertdialog(
                                title: 'Confirm Pickup',
                                content: 'Confirm that you have received '
                                    'the package from ${s.package.sender.fullName.getOrEmpty}?',
                                buttonDirection: Axis.horizontal,
                                secondButtonText: 'Yes, Confirm',
                                secondSplashColor: Colors.black12,
                                secondTextStyle:
                                    const TextStyle(color: Colors.white),
                                secondBgColor: Palette.accentColor,
                                onSecondPressed: c
                                    .read<SendPackageCubit>()
                                    .confirmPackagePickup,
                                materialFirstButton: AppOutlinedButton(
                                  text: 'No, Go Back',
                                  textColor: Palette.text100,
                                  textColorDark: Palette.text100Dark,
                                  borderColor: Palette.text100,
                                  borderColorDark: Palette.text100Dark,
                                  height: 0.045.h,
                                  cupertinoHeight: 0.028.sh,
                                  width: 0.3.sw,
                                  cupertinoWidth: 0.3.sw,
                                  onPressed: navigator.pop,
                                ),
                              ),
                            );
                        },
                      ),
                      end: () => AppButton(
                        text: 'Package Delivered',
                        isLoading: s.isLoading,
                        onPressed: () {
                          if (!s.isLoading)
                            App.showAlertDialog(
                              context: context,
                              barrierColor: App.resolveColor(
                                Colors.grey.shade800.withOpacity(0.55),
                                dark: Colors.white54,
                              ),
                              builder: (_) => AdaptiveAlertdialog(
                                title: 'Confirm Pickup',
                                content: 'Confirm that you have delivered '
                                    'the package to ${s.package.receiverFullName.getOrEmpty}?',
                                buttonDirection: Axis.horizontal,
                                secondButtonText: 'Yes, Confirm',
                                secondSplashColor: Colors.black12,
                                secondTextStyle:
                                    const TextStyle(color: Colors.white),
                                secondBgColor: Palette.accentColor,
                                onSecondPressed: c
                                    .read<SendPackageCubit>()
                                    .confirmPackageDelivery,
                                materialFirstButton: AppOutlinedButton(
                                  text: 'No, Go Back',
                                  textColor: Palette.text100,
                                  textColorDark: Palette.text100Dark,
                                  borderColor: Palette.text100,
                                  borderColorDark: Palette.text100Dark,
                                  height: 0.045.h,
                                  cupertinoHeight: 0.028.sh,
                                  width: 0.3.sw,
                                  cupertinoWidth: 0.3.sw,
                                  onPressed: navigator.pop,
                                ),
                              ),
                            );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //
            Positioned(
              right: 0.04.sw,
              bottom: _fabHeight,
              child: FloatingActionButton(
                tooltip: 'Your Location',
                heroTag: 'user-location-tag',
                elevation: 1.0,
                focusElevation: 1.8,
                highlightElevation: 1.8,
                backgroundColor: App.resolveColor(
                  Palette.neutralF9,
                  dark: Palette.secondaryColor,
                )!,
                onPressed: context.read<MapCubit>().updateCurrentLocation,
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
                heroTag: 'traffic-toggle-tag',
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
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<SendPackageCubit, SendPackageState, SendPackageStatus>(
      selector: (s) => s.package.status,
      builder: (c, status) => status.between(
        start: () {
          final package = c.read<SendPackageCubit>().state.package;
          return MapWidget(
            start: package.pickup,
            end: package.destination,
            endWidget: AppAssets.ellipse(const Size(23, 23)),
            startPainter: MarkerPainter(
              title: 'Sender',
              subtitle: '${package.sender.fullName.getOrEmpty}',
              leading: '${Utils.hoursAndMins(
                package.durationToPickup,
                casing: StringCase.upper,
                days_: false,
                hours_: false,
                secs_: false,
              )}',
            ),
          );
        },
        end: () {
          final package = c.read<SendPackageCubit>().state.package;
          return MapWidget(
            start: package.pickup,
            end: package.destination,
            refresh: status == SendPackageStatus.ENROUTE_TO_RECEIVER,
            startWidget: AppAssets.ellipse(const Size(23, 23)),
            endPainter: MarkerPainter(
              title: 'Receiver',
              subtitle: '${package.receiverFullName.getOrEmpty}',
              leading: '${Utils.hoursAndMins(
                package.durationToPickup,
                casing: StringCase.upper,
                days_: false,
                hours_: false,
                secs_: false,
              )}',
            ),
          );
        },
      ),
    );
  }
}
