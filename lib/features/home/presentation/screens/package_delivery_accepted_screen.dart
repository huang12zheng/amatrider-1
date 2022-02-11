library package_delivery_accepted_screen.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:url_launcher/url_launcher.dart';

part '../widgets/package_delivery/_issue_bottom_sheet.dart';
part '../widgets/package_delivery/_package_delivery_widgets.dart';
part '../widgets/package_delivery/_additional_notes_dialog.dart';

/// A stateless widget to render PackageDeliveryAcceptedScreen.
class PackageDeliveryAcceptedScreen extends StatefulWidget with AutoRouteWrapper {
  static final double _fabHeightClosed = _panelHeightClosed + 0.03.h;
  static final double _fabHeightOpened = _panelHeightOpened + 0.03.h;
  static final double _panelHeightClosed = 0.4.h;
  static final double _panelHeightOpened = 0.52.h;
  static final double _trafficHeightClosed = _fabHeightClosed + 0.09.h;
  static final double _trafficHeightOpened = _fabHeightOpened + 0.09.h;
  static final double _buttonBottom = 0.03.h;
  static final double _buttonHeight = 0.06.h;
  static final double _totalBottom = _buttonHeight + 0.026.h;

  final Logistics deliverable;
  final void Function(Logistics)? onDelivered;

  const PackageDeliveryAcceptedScreen({Key? key, required this.deliverable, this.onDelivered}) : super(key: key);

  @override
  State<PackageDeliveryAcceptedScreen> createState() => _PackageDeliveryAcceptedScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<MapCubit>()),
        BlocProvider(create: (c) => getIt<SendPackageCubit>()..init(deliverable, c)),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SendPackageCubit, SendPackageState>(
            listenWhen: (p, c) => p.deliverable?.status != c.deliverable?.status,
            listener: (c, s) => s.deliverable?.status.maybeWhen(
              enrouteToStoreOrSender: () {},
              enrouteToReceiver: () {},
              orElse: () => null,
            ),
          ),
          //
          BlocListener<SendPackageCubit, SendPackageState>(
            listenWhen: (p, c) =>
                p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
                (c.status.getOrElse(() => null) != null &&
                    (c.status.getOrElse(() => null)!.response.maybeMap(
                          error: (f) => f.fold(orElse: () => false),
                          orElse: () => false,
                        ))),
            listener: (c, s) => s.status.fold(
              () => null,
              (it) => it?.response.map(
                info: (i) => PopupDialog.error(message: i.message).render(c),
                error: (f) => PopupDialog.error(message: f.message).render(c),
                success: (res) => PopupDialog.success(
                  duration: const Duration(seconds: 2),
                  message: res.message,
                  listener: (val) => val?.fold(dismissed: () async {
                    if (s.deliverable?.status == ParcelStatus.DELIVERED) {
                      BlocProvider.of<LocationCubit>(context).disableBackgroundLocation();

                      await Future.delayed(const Duration(milliseconds: 500), () {
                        navigator.popUntil(
                          (route) => route.settings.name == DashboardRoute.name,
                        );
                      });
                    }
                  }),
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

class _PackageDeliveryAcceptedScreenState extends State<PackageDeliveryAcceptedScreen>
    with AutomaticKeepAliveClientMixin<PackageDeliveryAcceptedScreen> {
  double _fabHeight = PackageDeliveryAcceptedScreen._fabHeightOpened;
  double _trafficHeight = PackageDeliveryAcceptedScreen._trafficHeightOpened;

  final panelController = PanelController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return WillPopScope(
      onWillPop: () {
        App.forceAppUpdate();
        BlocProvider.of<LocationCubit>(context).disableBackgroundLocation();
        return Future.value(true);
      },
      child: SafeArea(
        top: false,
        left: false,
        right: false,
        bottom: false,
        child: AdaptiveScaffold(
          body: AdaptiveScaffoldBody(
            body: BlocSelector<SendPackageCubit, SendPackageState, bool>(
              selector: (s) => s.isLoadingSingle,
              builder: (c, isLoading) {
                if (isLoading) return const Center(child: CircularProgressBar.adaptive(height: 25, width: 26, strokeWidth: 2));

                return Stack(
                  children: [
                    SlidingUpPanel(
                      controller: panelController,
                      maxHeight: PackageDeliveryAcceptedScreen._panelHeightOpened,
                      minHeight: PackageDeliveryAcceptedScreen._panelHeightClosed,
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
                      parallaxEnabled: true,
                      parallaxOffset: 0.5,
                      defaultPanelState: PanelState.OPEN,
                      body: const _Body(),
                      color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark)!,
                      panelBuilder: (controller) => _PanelBuilder(
                        controller,
                        panelController: panelController,
                      ),
                      onPanelSlide: (position) {
                        final panelMaxScrollExtent =
                            PackageDeliveryAcceptedScreen._panelHeightOpened - PackageDeliveryAcceptedScreen._panelHeightClosed;

                        final newFabHeight = (position * panelMaxScrollExtent) + PackageDeliveryAcceptedScreen._fabHeightClosed;

                        final newTrafficHeight = (position * panelMaxScrollExtent) + PackageDeliveryAcceptedScreen._trafficHeightClosed;

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
                          color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: App.sidePadding)
                              .copyWith(bottom: PackageDeliveryAcceptedScreen._buttonBottom),
                          child: BlocBuilder<SendPackageCubit, SendPackageState>(
                            builder: (c, s) => s.deliverable!.status.between(
                              start: () => AppButton(
                                text: 'Confirm Pickup',
                                isLoading: s.isConfirmingPickup || s.isLoading,
                                loaderHeight: 0.06.h,
                                onPressed: () {
                                  c.read<SendPackageCubit>().codeChanged(null, true);

                                  if (!s.isConfirmingPickup)
                                    App.showAlertDialog(
                                      context: context,
                                      builder: (_) => BlocProvider.value(
                                        value: c.read<SendPackageCubit>(),
                                        child: AdaptiveAlertdialog(
                                          title: 'Confirm Pickup',
                                          titleHeight: App.platform.cupertino(0.04.h),
                                          body: [
                                            AdaptiveText(
                                              s.deliverable!.type.when(
                                                order: () => 'Confirm pickup from ${s.deliverable?.store.name.getOrEmpty}?',
                                                package: () => 'Confirm that you have received the package from '
                                                    '${s.deliverable?.sender.fullName.getOrEmpty}?',
                                              ),
                                              fontSize: 16.sp,
                                              minFontSize: 12,
                                              maxFontSize: 16,
                                              isDefault: Utils.platform_(cupertino: true),
                                              fontWeight: FontWeight.w500,
                                              textAlign: TextAlign.center,
                                              letterSpacing: Utils.letterSpacing,
                                            ),
                                            //
                                            0.02.verticalh,
                                            //
                                            ReactiveTextFormField<SendPackageCubit, SendPackageState>(
                                              hintText: (s) => 'Enter Confirmation Code',
                                              // autofocus: true,
                                              disabled: (s) => s.isConfirmingPickup,
                                              keyboardType: TextInputType.number,
                                              capitalization: TextCapitalization.none,
                                              field: (s) => s.code,
                                              validate: (s) => s.validate,
                                              response: (s) => s.status,
                                              errorField: (s) => s.errors?.bankName,
                                              onChanged: (cubit, it) => cubit.codeChanged(it),
                                            ),
                                            //
                                            0.01.verticalh,
                                          ],
                                          buttonDirection: Axis.horizontal,
                                          cupertinoFirstButtonText: 'No, Go Back',
                                          isSecondDestructive: true,
                                          secondButtonText: 'Yes, Confirm',
                                          secondSplashColor: Colors.black12,
                                          secondTextStyle: const TextStyle(color: Colors.white),
                                          secondBgColor: Palette.accentColor,
                                          autoPopSecondButton: false,
                                          onSecondPressed: Utils.platform_(
                                            material: () => c.read<SendPackageCubit>().confirmPickup(c, navigator.pop),
                                            cupertino: navigator.pop,
                                          ),
                                          cupertinoSecondButton: CupertinoDialogAction(
                                            isDefaultAction: true,
                                            isDestructiveAction: false,
                                            onPressed: () => c.read<SendPackageCubit>().confirmPickup(c, navigator.pop),
                                            child: const Text('Yes, Confirm'),
                                          ),
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
                                      ),
                                    );
                                },
                              ),
                              end: () => AppButton(
                                text: !s.deliverable!.contactlessDelivery ? 'Deliver Package' : 'Leave at door step',
                                isLoading: s.isConfirmingDelivery || s.isLoading,
                                loaderHeight: 0.06.h,
                                onPressed: () {
                                  c.read<SendPackageCubit>().codeChanged(null, true);

                                  if (!s.isConfirmingDelivery)
                                    App.showAlertDialog(
                                      context: context,
                                      builder: (_) => BlocProvider.value(
                                        value: c.read<SendPackageCubit>(),
                                        child: AdaptiveAlertdialog(
                                          title: !s.deliverable!.contactlessDelivery ? 'Confirm Delivery' : 'Leave at doorstep',
                                          titleHeight: App.platform.cupertino(0.04.h),
                                          body: [
                                            AdaptiveText(
                                              !s.deliverable!.contactlessDelivery
                                                  ? 'Confirm that you have delivered the package to '
                                                      '${s.deliverable?.receiver.fullName.getOrEmpty}?'
                                                  : 'This is a contactless delivery.\n\n'
                                                      'Confirm that you have left the package at the doorstep?',
                                              fontSize: 16.sp,
                                              minFontSize: 12,
                                              maxFontSize: 16,
                                              isDefault: Utils.platform_(cupertino: true),
                                              fontWeight: FontWeight.w500,
                                              textAlign: TextAlign.center,
                                              letterSpacing: Utils.letterSpacing,
                                            ),
                                            //
                                            if (!s.deliverable!.contactlessDelivery) ...[
                                              0.02.verticalh,
                                              //
                                              ReactiveTextFormField<SendPackageCubit, SendPackageState>(
                                                hintText: (s) => 'Enter Delivery Code',
                                                // autofocus: true,
                                                disabled: (s) => s.isConfirmingDelivery,
                                                keyboardType: TextInputType.number,
                                                capitalization: TextCapitalization.none,
                                                field: (s) => s.code,
                                                validate: (s) => s.validate,
                                                response: (s) => s.status,
                                                errorField: (s) => s.errors?.bankName,
                                                onChanged: (cubit, it) => cubit.codeChanged(it),
                                              ),
                                            ],
                                            //
                                            0.01.verticalh,
                                          ],
                                          buttonDirection: Axis.horizontal,
                                          cupertinoFirstButtonText: 'No, Go Back',
                                          isSecondDestructive: true,
                                          secondButtonText: 'Yes, Confirm',
                                          secondSplashColor: Colors.black12,
                                          secondTextStyle: const TextStyle(color: Colors.white),
                                          secondBgColor: Palette.accentColor,
                                          autoPopSecondButton: false,
                                          onSecondPressed: Utils.platform_(
                                            material: () =>
                                                c.read<SendPackageCubit>().confirmDelivery(c, navigator.pop, widget.onDelivered),
                                            cupertino: navigator.pop,
                                          ),
                                          cupertinoSecondButton: CupertinoDialogAction(
                                            isDefaultAction: true,
                                            isDestructiveAction: false,
                                            onPressed: () =>
                                                c.read<SendPackageCubit>().confirmDelivery(c, navigator.pop, widget.onDelivered),
                                            child: const Text('Yes, Confirm'),
                                          ),
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
                    if (widget.deliverable.contactlessDelivery)
                      Positioned(
                        top: 10,
                        left: 10,
                        child: SafeArea(
                          child: FloatingActionButton(
                            tooltip: 'This is a Contactless Delivery.',
                            heroTag: 'contactless-delivery-tag',
                            elevation: 1.0,
                            focusElevation: 1.8,
                            highlightElevation: 1.8,
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(10.0),
                            // ),
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            mini: true,
                            backgroundColor: App.resolveColor(Palette.cardColorLight, dark: const Color.fromARGB(255, 6, 20, 39))!,
                            onPressed: null,
                            child: Icon(
                              Utils.platform_(material: Icons.shield, cupertino: CupertinoIcons.location_fill),
                              color: Palette.infoBlue,
                              size: 27,
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
                        backgroundColor: App.resolveColor(Palette.cardColorLight, dark: const Color.fromARGB(255, 6, 20, 39))!,
                        onPressed: () {
                          context.read<MapCubit>().updateCurrentLocation(c);
                          context.read<SendPackageCubit>().updateRiderLocation(c);
                        },
                        child: Icon(
                          Utils.platform_(material: Icons.gps_fixed_rounded, cupertino: CupertinoIcons.location_fill),
                          color: App.resolveColor(Palette.accentColor, dark: Palette.accentDark),
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
                        backgroundColor: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark)!,
                        onPressed: context.read<MapCubit>().toogleTraffic,
                        child: BlocBuilder<MapCubit, MapState>(
                          buildWhen: (p, c) => p.trafficEnabled != c.trafficEnabled,
                          builder: (c, s) => Icon(
                            Icons.traffic_outlined,
                            color: s.trafficEnabled ? App.resolveColor(Palette.accentGreen, dark: Palette.accentDarkGreen) : Colors.grey,
                            size: 27,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendPackageCubit, SendPackageState>(
      // selector: (s) => s.deliverable?.status,
      builder: (c, s) =>
          s.deliverable?.status.between(
            start: () {
              final deliverable = c.read<SendPackageCubit>().state.deliverable!;

              context.read<MapCubit>().drawPolyline(UserAddress.fromLocation(deliverable.riderLocation), deliverable.pickup);

              context.read<MapCubit>().adjustMapBounds(UserAddress.fromLocation(deliverable.riderLocation), deliverable.pickup);

              final location =
                  deliverable.riderLocation.lat.getOrNull == null ? c.read<LocationCubit>().state.position : deliverable.riderLocation;

              return MapWidget(
                start: UserAddress.fromLocation(location!),
                end: deliverable.pickup,
                customStartWidget: false,
              );
            },
            end: () {
              final deliverable = c.read<SendPackageCubit>().state.deliverable!;

              context.read<MapCubit>().drawPolyline(UserAddress.fromLocation(deliverable.riderLocation), deliverable.destination);

              context.read<MapCubit>().adjustMapBounds(UserAddress.fromLocation(deliverable.riderLocation), deliverable.destination);

              final location =
                  deliverable.riderLocation.lat.getOrNull == null ? c.read<LocationCubit>().state.position : deliverable.riderLocation;

              return MapWidget(
                start: UserAddress.fromLocation(location!),
                end: deliverable.destination,
                refresh: s.deliverable?.status == ParcelStatus.ENROUTE_TO_RECEIVER,
                customStartWidget: false,
              );
            },
          ) ??
          Utils.nothing,
    );
  }
}
