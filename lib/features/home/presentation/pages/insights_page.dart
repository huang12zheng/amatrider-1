library insights_page.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part '../widgets/insight_widgets/activity_chart_widget.dart';
part '../widgets/insight_widgets/claim_bonus_dialog_builder.dart';
part '../widgets/insight_widgets/deposit_cash_dialog_builder.dart';

/// A stateless widget to render InsightsPage.
class InsightsPage extends StatelessWidget with AutoRouteWrapper {
  const InsightsPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<InsightsCubit>(),
      child: BlocListener<InsightsCubit, InsightsState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.response.maybeMap(
                      error: (f) => f.foldCode(orElse: () => false),
                      orElse: () => false,
                    ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (it) => it?.response.map(
            error: (f) => PopupDialog.error(message: f.message).render(c),
            success: (s) => PopupDialog.success(message: s.message).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  void onRefresh(BuildContext c, RefreshController controller) async {
    await BlocProvider.of<InsightsCubit>(c).fetchInsights();
    controller.refreshCompleted();
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
              BlocSelector<AuthWatcherCubit, AuthWatcherState,
                  BasicTextField<double?>?>(
                selector: (s) => s.rider?.avgRating,
                builder: (_, rating) => Headline(
                  '${rating?.getOrNull ?? 0.0}',
                  fontSize: 15.sp,
                ),
              ),
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
      body: BlocBuilder<InsightsCubit, InsightsState>(
        builder: (c, s) => SafeArea(
          child: DragToRefresh(
            initialRefresh: true,
            onRefresh: (controller) => onRefresh(c, controller),
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
                if (s.insight.daysLeft.isValid)
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
                                '${s.insight.daysLeft.getOrEmpty} days left',
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
                if (s.insight.completed.isValid &&
                    s.insight.target.isValid &&
                    s.insight.progress.isValid)
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
                                    subtitle:
                                        '${s.insight.completed.getOrEmpty}',
                                    color: Palette.pastelGreen,
                                    icon: AmatNow.check_circle,
                                    iconColor: Palette.accentGreen,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                ),
                                //
                                Flexible(
                                  child: _InsightColumn(
                                    title: 'Target',
                                    subtitle: '${s.insight.target.getOrEmpty}',
                                    color: Palette.pastelBlue,
                                    icon: AmatNow.target_icon,
                                    iconColor: Palette.accentBlue,
                                  ),
                                ),
                                //
                                Flexible(
                                  child: _InsightColumn(
                                    title: 'Progress',
                                    subtitle:
                                        '${s.insight.progress.getOrEmpty}%',
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
                if (s.insight.bonus.isValid && s.insight.bonus.getOrNull != 0)
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
                                    subtitle:
                                        '${s.insight.extraDelivery.getOrEmpty}',
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
                                          '${s.insight.bonus.getOrEmpty}'
                                              .asCurrency(),
                                          fontSize: 15.sp,
                                          textColor: Palette.neutralLabel,
                                          textColorDark: Palette.neutralLabel,
                                        ),
                                      ),
                                    ),
                                    iconColor: Palette.accentColor,
                                    padding: EdgeInsets.all(0.02.sw),
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    onPressed: () => App.showAlertDialog(
                                      context: context,
                                      barrierColor: App.resolveColor(
                                        Colors.grey.shade800.withOpacity(0.55),
                                        dark: Colors.white54,
                                      ),
                                      builder: (_) => _ClaimBonusDialogBuilder(
                                        cubit: c.read<InsightsCubit>(),
                                        cash: s.insight.cashAtHand,
                                      ),
                                    ),
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
                if (s.insight.cashAtHand.isValid &&
                    s.insight.cashAtHand.getOrNull != 0)
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
                                    subtitle:
                                        '${s.insight.cashAtHand.getOrEmpty}'
                                            .asCurrency(),
                                    color: Palette.pastelPurple,
                                    icon: AmatNow.cash_hand,
                                    iconColor: Palette.accentPurple,
                                    padding: EdgeInsets.all(0.02.sw),
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    onPressed: () => App.showAlertDialog(
                                      context: context,
                                      barrierColor: App.resolveColor(
                                        Colors.grey.shade800.withOpacity(0.55),
                                        dark: Colors.white54,
                                      ),
                                      builder: (_) => _DepositCashDialogBuilder(
                                        cubit: c.read<InsightsCubit>(),
                                        cash: s.insight.cashAtHand,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                if (s.insight.activities.isValid)
                  SliverPadding(
                    padding: EdgeInsets.all(App.sidePadding),
                    sliver: const SliverToBoxAdapter(
                      child: _ActivityChartWidget(),
                    ),
                  ),
              ],
            ),
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
