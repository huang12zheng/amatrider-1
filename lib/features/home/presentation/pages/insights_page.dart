import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A stateless widget to render InsightsPage.
class InsightsPage extends StatelessWidget with AutoRouteWrapper {
  const InsightsPage({Key? key}) : super(key: key);

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
              AdaptiveText(
                'Rating: ',
                fontSize: 16.sp,
                textColor: Palette.text80,
                textColorDark: Palette.text100Dark,
                fontWeight: FontWeight.w400,
              ),
              //
              Headline('4.0', fontSize: 15.sp),
              //
              Icon(
                Utils.platform_(
                  material: Icons.stars_rounded,
                  cupertino: CupertinoIcons.star,
                ),
                color: Palette.accentYellow,
              ),
              //
              HorizontalSpace(width: App.sidePadding),
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
                    'Insight',
                    softWrap: true,
                    fontSize: 25.0.sp,
                    fontWeight: FontWeight.w600,
                    letterSpacing: Utils.letterSpacing,
                  ),
                ),
              ),
              //
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: App.sidePadding,
                ).copyWith(top: 0.03.sw),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    children: [
                      AdaptiveText(
                        'Current Plan',
                        fontSize: 19.0.sp,
                        fontWeight: FontWeight.w500,
                        letterSpacing: Utils.letterSpacing,
                      ),
                      //
                      HorizontalSpace(width: 0.02.sw),
                      //
                      DecoratedBox(
                        decoration: const BoxDecoration(
                          color: Palette.accent20,
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          child: AdaptiveText(
                            '24 days left',
                            style: TextStyle(
                              color: Palette.accentColor,
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: App.sidePadding,
                ).copyWith(top: 0.03.sw),
                sliver: SliverToBoxAdapter(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: App.resolveColor(
                        Colors.white,
                        dark: Palette.secondaryColor.shade700,
                      ),
                      borderRadius: BorderRadius.circular(
                        Utils.inputBorderRadius,
                      ),
                    ),
                    child: SizedBox(
                      height: 0.17.sh,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 0.035.sw,
                          vertical: 0.03.sw,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: _InsightColumn(
                                title: 'Completed',
                                subtitle: '20',
                                color: Palette.pastelGreen,
                                icon: AppAssets.checkCircle,
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                            ),
                            //
                            Flexible(
                              child: _InsightColumn(
                                title: 'Target',
                                subtitle: '50',
                                color: Palette.pastelBlue,
                                icon: AppAssets.targetIcon,
                              ),
                            ),
                            //
                            Flexible(
                              child: _InsightColumn(
                                title: 'Progress',
                                subtitle: '60%',
                                color: Palette.pastelYellow,
                                icon: AppAssets.progressIcon,
                                crossAxisAlignment: CrossAxisAlignment.end,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: App.sidePadding,
                ).copyWith(top: 0.04.sw),
                sliver: SliverToBoxAdapter(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: App.resolveColor(
                        Colors.white,
                        dark: Palette.secondaryColor.shade700,
                      ),
                      borderRadius: BorderRadius.circular(
                        Utils.inputBorderRadius,
                      ),
                    ),
                    child: SizedBox(
                      height: 0.17.sh,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 0.035.sw,
                          vertical: 0.03.sw,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    flex: 7,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Palette.pastelPurple,
                                        borderRadius:
                                            BorderRadius.circular(200),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(0.02.sw),
                                        child: AppAssets.cashHand,
                                      ),
                                    ),
                                  ),
                                  //
                                  Flexible(
                                    flex: 5,
                                    child: AdaptiveText(
                                      'Total Cash at Hand',
                                      fontSize: 19.0.sp,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: Utils.letterSpacing,
                                    ),
                                  ),
                                  //
                                  Flexible(
                                    flex: 4,
                                    child: AdaptiveText(
                                      '\$10,000',
                                      fontSize: 20.0.sp,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: Utils.letterSpacing,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //
                            Flexible(
                              flex: 3,
                              child: AdaptiveButton(
                                text: 'Deposit Cash',
                                textColor: Colors.white,
                                splashColor: Colors.white24,
                                height: 0.028.sh,
                                cupertinoHeight: 0.028.sh,
                                width: 0.3.sw,
                                cupertinoWidth: 0.3.sw,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InsightColumn extends StatelessWidget {
  final Widget? icon;
  final String title;
  final String subtitle;
  final Color? color;
  final CrossAxisAlignment crossAxisAlignment;

  const _InsightColumn({
    Key? key,
    this.icon,
    required this.title,
    required this.subtitle,
    this.color,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Flexible(
          flex: 6,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: EdgeInsets.all(0.013.sw),
              child: icon,
            ),
          ),
        ),
        //
        Flexible(
          flex: 5,
          child: AdaptiveText(
            '$title',
            fontSize: 16.0.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: Utils.letterSpacing,
          ),
        ),
        //
        Flexible(
          flex: 4,
          child: AdaptiveText(
            '$subtitle',
            fontSize: 20.0.sp,
            fontWeight: FontWeight.w600,
            letterSpacing: Utils.letterSpacing,
          ),
        ),
      ],
    );
  }
}
