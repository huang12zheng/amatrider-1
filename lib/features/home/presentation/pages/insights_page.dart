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
        leadingAction: () {},
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
                            const Flexible(
                              child: _InsightColumn(
                                title: 'Completed',
                                subtitle: '20',
                                color: Palette.pastelGreen,
                                icon: AmatNow.check_circle,
                                iconColor: Palette.accentGreen,
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                            ),
                            //
                            const Flexible(
                              child: _InsightColumn(
                                title: 'Target',
                                subtitle: '50',
                                color: Palette.pastelBlue,
                                icon: AmatNow.target_icon,
                                iconColor: Palette.accentBlue,
                              ),
                            ),
                            //
                            const Flexible(
                              child: _InsightColumn(
                                title: 'Progress',
                                subtitle: '100%',
                                color: Palette.pastelYellow,
                                icon: AmatNow.progress_icon,
                                iconColor: Palette.accentYellow,
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
                      color: App.resolveColor(Colors.white,
                          dark: Palette.secondaryColor.shade700),
                      borderRadius: BorderRadius.circular(
                        Utils.inputBorderRadius,
                      ),
                    ),
                    child: SizedBox(
                      height: 0.16.sh,
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
                              flex: 8,
                              child: _InsightColumn(
                                title: 'Extra Deliveries',
                                titleFontSize: 19.0.sp,
                                subtitle: '12',
                                color: Palette.accent20,
                                icon: AmatNow.gift_box,
                                icon2: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: App.resolveColor(
                                      Palette.neutralF5,
                                      dark: Palette.neutralMoonDark,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        Utils.inputBorderRadius),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 0.03.sw,
                                      vertical: 0.02.sw,
                                    ),
                                    child: Headline(
                                      '\$32',
                                      fontSize: 15.sp,
                                      textColor: Palette.neutralLabel,
                                      textColorDark: Palette.neutralLabel,
                                    ),
                                  ),
                                ),
                                iconColor: Palette.accentColor,
                                padding: EdgeInsets.all(0.02.sw),
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                            ),
                            //
                            Flexible(
                              flex: 5,
                              child: AppOutlinedButton(
                                text: 'Claim Bonus',
                                height: 0.09.sw,
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
                      height: 0.16.sh,
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
                              flex: 8,
                              child: _InsightColumn(
                                title: 'Total Cash at Hand',
                                titleFontSize: 19.0.sp,
                                subtitle: '\$10,000',
                                color: Palette.pastelPurple,
                                icon: AmatNow.cash_hand,
                                iconColor: Palette.accentPurple,
                                padding: EdgeInsets.all(0.02.sw),
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                            ),
                            //
                            Flexible(
                              flex: 5,
                              child: AdaptiveButton(
                                text: 'Deposit Cash',
                                textColor: Colors.white,
                                splashColor: Colors.white24,
                                height: 0.09.sw,
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
  final IconData? icon;
  final Widget? icon2;
  final String title;
  final double? titleFontSize;
  final String subtitle;
  final double? subtitleFontSize;
  final Color? color;
  final Color? iconColor;
  final EdgeInsets? padding;
  final CrossAxisAlignment crossAxisAlignment;

  const _InsightColumn({
    Key? key,
    this.icon,
    this.icon2,
    required this.title,
    this.titleFontSize,
    required this.subtitle,
    this.subtitleFontSize,
    this.color,
    this.iconColor,
    this.padding,
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
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: padding ?? EdgeInsets.all(0.013.sw),
                  child: Icon(icon, color: iconColor),
                ),
              ),
              //
              icon2?.let(
                    (child) => Row(
                      children: [
                        HorizontalSpace(width: 0.02.sw),
                        child,
                      ],
                    ),
                  ) ??
                  Utils.nothing,
            ],
          ),
        ),
        //
        Flexible(
          flex: 5,
          child: AdaptiveText(
            '$title',
            fontSize: titleFontSize ?? 16.0.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: Utils.letterSpacing,
          ),
        ),
        //
        Flexible(
          flex: 4,
          child: AdaptiveText(
            '$subtitle',
            fontSize: subtitleFontSize ?? 20.0.sp,
            fontWeight: FontWeight.w600,
            letterSpacing: Utils.letterSpacing,
          ),
        ),
      ],
    );
  }
}
