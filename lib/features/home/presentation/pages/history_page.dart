import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A stateless widget to render HistoryPage.
class HistoryPage extends StatelessWidget with AutoRouteWrapper {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  Future<void> onRefresh(BuildContext c) async {
    return Future.delayed(const Duration(seconds: 5));
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: AdaptiveToolbar(
        tooltip: 'Menu',
        showCustomLeading: true,
        leadingIcon: Consumer(
          builder: (_, ref, child) => PlatformIconButton(
            materialIcon: const Icon(Icons.menu),
            cupertinoIcon: const Icon(CupertinoIcons.bars),
            onPressed: ref.read(scaffoldController.notifier).open,
          ),
        ),
        actions: [
          Row(
            children: [
              Headline('Status: ', fontSize: 16.sp),
              //
              AdaptiveText(
                'Inactive',
                fontSize: 16.sp,
                textColor: Palette.text40,
                fontWeight: FontWeight.w400,
              ),
              //
              PlatformSwitch(
                value: false,
                onChanged: (value) {},
              ),
            ],
          ),
        ],
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
            slivers: <Widget>[
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: App.sidePadding,
                ).copyWith(top: 0.01.sw),
                sliver: SliverToBoxAdapter(
                  child: AdaptiveText(
                    'History',
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 25.0.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: Utils.letterSpacing,
                    ),
                  ),
                ),
              ),
              //
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: App.sidePadding,
                ).copyWith(top: 0.03.sw),
                sliver: SliverList(
                  delegate: SliverChildListDelegate.fixed([
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Headline('20-12-2021', fontWeight: FontWeight.normal),
                        //
                        Material(
                          color: App.resolveColor(Colors.transparent),
                          borderRadius:
                              BorderRadius.circular(Utils.buttonRadius),
                          child: InkWell(
                            onTap: () {},
                            borderRadius:
                                BorderRadius.circular(Utils.buttonRadius),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AdaptiveText(
                                'See all',
                                textColor: Palette.accentColor,
                                fontSize: 17.sp,
                                letterSpacing: Utils.letterSpacing,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //
                    VerticalSpace(height: 0.03.sw),
                    //
                    const DeliveryHistoryCard(
                      asset: AppAssets.request1,
                      initialExpanded: true,
                    ),
                    //
                    VerticalSpace(height: 0.03.sw),
                    //
                    const DeliveryHistoryCard(
                      asset: AppAssets.request2,
                      initialExpanded: true,
                    ),
                    //
                    VerticalSpace(height: 0.03.sw),
                    //
                    const DeliveryHistoryCard(
                      asset: AppAssets.request3,
                      initialExpanded: true,
                    ),
                    //
                    VerticalSpace(height: 0.03.sw),
                    //
                    const DeliveryHistoryCard(
                      asset: AppAssets.blackAvatar,
                      initialExpanded: true,
                    ),
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
