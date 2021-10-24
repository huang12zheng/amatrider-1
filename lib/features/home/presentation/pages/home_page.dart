import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const completeColor = Color(0xff5e6172);
const inProgressColor = Color(0xff5ec792);
const todoColor = Color(0xffd1d2d7);

/// A stateless widget to render HomePage.
class HomePage extends StatelessWidget with AutoRouteWrapper {
  final int _processIndex = 2;

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  Future<void> onRefresh(BuildContext c) async {
    return Future.delayed(const Duration(seconds: 5));
  }

  Color getColor(int index) {
    if (index == _processIndex) {
      return inProgressColor;
    } else if (index < _processIndex) {
      return completeColor;
    } else {
      return todoColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: AdaptiveToolbar(
        tooltip: 'Menu',
        showCustomLeading: true,
        leadingAction: () {},
        leadingIcon: Consumer(
          builder: (_, ref, child) => PlatformIconButton(
            materialIcon: const Icon(Icons.menu),
            cupertinoIcon: const Icon(CupertinoIcons.bars),
            onPressed: ref.read(scaffoldController.notifier).open,
          ),
        ),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          edgeOffset: 10,
          triggerMode: RefreshIndicatorTriggerMode.onEdge,
          color: App.resolveColor(Palette.accentColor),
          backgroundColor: App.resolveColor(
            Palette.neutralF9,
            dark: Palette.secondaryColor.shade400,
          ),
          onRefresh: () => onRefresh(context),
          child: CustomScrollView(
            shrinkWrap: true,
            physics: Utils.physics,
            scrollDirection: Axis.vertical,
            controller: ScrollController(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: App.sidePadding,
                ).copyWith(top: App.longest * 0.01),
                sliver: SliverList(
                  delegate: SliverChildListDelegate.fixed([
                    AdaptiveText(
                      'Hello, John! 👋',
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 17.0.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    //
                    VerticalSpace(height: 0.03.sw),
                    //
                    AdaptiveText(
                      'A Good Day To Make Deliveries.',
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 25.0.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: Utils.letterSpacing,
                      ),
                    ),
                    //
                    VerticalSpace(height: 0.05.sw),
                    //
                  ]),
                ),
              ),
              //
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: App.sidePadding,
                ).copyWith(top: App.longest * 0.01),
                sliver: SliverList(
                  delegate: SliverChildListDelegate.fixed([
                    Row(
                      children: [
                        Headline('Active Requests', fontSize: 17.sp),
                        //
                        Headline(
                          '(4)',
                          fontSize: 15.5.sp,
                          textColorLight: Palette.accentColor,
                        ),
                      ],
                    ),
                    //
                    VerticalSpace(height: 0.04.sw),
                    //
                    DeliveryRequestCard(
                      onAccept: () => App.showAlertDialog(
                        context: context,
                        barrierColor: App.resolveColor(
                          Colors.grey.shade800.withOpacity(0.55),
                          dark: Colors.white54,
                        ),
                        builder: (_) => AdaptiveAlertdialog(
                          title: 'Accept Request',
                          content: 'Are you sure you '
                              'want to accept this request?',
                          cupertinoFirstButtonText: 'No, Go Back',
                          onFirstPressed: navigator.pop,
                          buttonDirection: Axis.horizontal,
                          secondButtonText: 'Yes, Accept',
                          secondSplashColor: Colors.black12,
                          secondTextStyle: const TextStyle(color: Colors.white),
                          secondBgColor: Palette.accentColor,
                          onSecondPressed: () =>
                              navigator.popAndPush(RideAcceptedRoute()),
                          materialFirstButton: AppOutlinedButton(
                            text: 'No, Go Back',
                            height: 0.09.sw,
                            cupertinoHeight: 0.028.sh,
                            fontSize: 15.sp,
                            width: 0.3.sw,
                            cupertinoWidth: 0.3.sw,
                            onPressed: navigator.pop,
                          ),
                        ),
                      ),
                      onDecline: () {},
                    ),
                    //
                    ...env.flavor.fold(
                      dev: () => [],
                      prod: () => [
                        VerticalSpace(height: 0.04.sw),
                        //
                        DeliveryRequestCard(
                          asset: AppAssets.request3,
                          initialExpanded: true,
                          isOrder: false,
                          onAccept: () {},
                          onDecline: () {},
                        ),
                      ],
                    ),
                    //
                    VerticalSpace(height: 0.08.sw),
                    //
                    Row(
                      children: [
                        Headline('Potential Requests', fontSize: 17.sp),
                        //
                        Headline(
                          '(14)',
                          fontSize: 15.5.sp,
                          textColorLight: Palette.accentColor,
                        ),
                      ],
                    ),
                    //
                    VerticalSpace(height: 0.04.sw),
                    //
                    const DeliveryRequestCard(
                      asset: AppAssets.request1,
                      initialExpanded: true,
                      showActionButtons: false,
                    ),
                    //
                    ...env.flavor.fold(
                      dev: () => [],
                      prod: () => [
                        VerticalSpace(height: 0.04.sw),
                        //
                        const DeliveryRequestCard(
                          asset: AppAssets.blackAvatar,
                          initialExpanded: true,
                          isOrder: false,
                          time: '120 Mins',
                          showActionButtons: false,
                        ),
                      ],
                    ),
                    //
                    VerticalSpace(height: 0.04.sw),
                    //
                    const DeliveryRequestCard(
                      asset: AppAssets.request2,
                      showActionButtons: false,
                      time: '20 Mins',
                    ),
                    //
                    VerticalSpace(height: 0.04.sw),
                    //
                    const DeliveryRequestCard(
                      asset: AppAssets.request3,
                      showActionButtons: false,
                    ),
                    //
                    VerticalSpace(height: 0.04.sw),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
