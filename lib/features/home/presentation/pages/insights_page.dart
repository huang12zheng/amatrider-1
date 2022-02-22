library insights_page.dart;

import 'dart:async';

import 'package:amatrider/core/data/sources/remote/utilities/utilities_remote.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

part '../widgets/insight_widgets/activity_chart_widget.dart';
part '../widgets/insight_widgets/claim_bonus_dialog_builder.dart';
part '../widgets/insight_widgets/deposit_cash_dialog_builder.dart';

/// A stateless widget to render InsightsPage.
class InsightsPage extends StatefulWidget {
  const InsightsPage({Key? key}) : super(key: key);

  @override
  State<InsightsPage> createState() => _InsightsPageState();
}

class _InsightsPageState extends State<InsightsPage> {
  late InsightsCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<InsightsCubit>()..echo();
  }

  void onRefresh(BuildContext c, DragToRefreshState controller) async {
    await BlocProvider.of<InsightsCubit>(c).fetchInsights();
    controller.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _cubit,
      child: BlocListener<InsightsCubit, InsightsState>(
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
            info: (i) => PopupDialog.info(message: i.message).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show).render(c),
            success: (s) => PopupDialog.success(message: s.message).render(c),
          ),
        ),
        child: AdaptiveScaffold(
          adaptiveToolbar: AdaptiveToolbar(
            tooltip: '${context.tr.menu}',
            showCustomLeading: Utils.platform_(material: true, cupertino: false),
            implyLeading: false,
            cupertinoImplyLeading: false,
            leadingAction: () {},
            leadingIcon: App.platform.material(Consumer(
              builder: (_, ref, child) => PlatformIconButton(
                materialIcon: const Icon(Icons.menu),
                cupertinoIcon: const Icon(CupertinoIcons.bars),
                onPressed: ref.read(scaffoldController.notifier).open,
              ),
            )),
            actions: [
              Utils.platform_(
                cupertino: Center(
                  child: Consumer(
                    builder: (_, ref, child) => AppIconButton(
                      tooltip: 'Menu',
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      onPressed: ref.read(scaffoldController.notifier).open,
                      padding: EdgeInsets.zero,
                      child: Center(
                        child: Icon(
                          CupertinoIcons.bars,
                          size: 30,
                          color: Utils.foldTheme(
                            light: () => Palette.cardColorDark,
                            dark: () => Palette.cardColorLight,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                material: Utils.nothing,
              )!,
              //
              const Spacer(),
              //
              GestureDetector(
                onTap: () => navigator.push(const RiderReviewRoute()),
                child: Row(
                  children: [
                    AdaptiveText(
                      '${tr.rating}: ',
                      fontSize: 16.sp,
                      textColor: Palette.text80,
                      textColorDark: Palette.text100Dark,
                      fontWeight: FontWeight.w400,
                    ),
                    //
                    BlocSelector<InsightsCubit, InsightsState, BasicTextField<double?>>(
                      selector: (s) => s.insight.avgRating,
                      builder: (_, rating) => Headline(
                        '${rating.getOrNull ?? 0.0}',
                        maxLines: 1,
                        fontSize: 15.sp,
                        maxFontSize: 17,
                      ),
                    ),
                    //
                    Utils.platform_(
                      cupertino: HorizontalSpace(width: 0.013.sw),
                      material: Utils.nothing,
                    )!,
                    //
                    Icon(
                      Utils.platform_(
                        material: Icons.stars_rounded,
                        cupertino: CupertinoIcons.star_circle_fill,
                      ),
                      color: Palette.accentYellow,
                      size: Utils.platform_(cupertino: 20),
                    ),
                    //
                    HorizontalSpace(width: App.sidePadding),
                  ],
                ),
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
                          '${context.tr.insightTitleText}',
                          softWrap: true,
                          fontSize: 25.0.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: Utils.letterSpacing,
                        ),
                      ),
                    ),
                    //
                    if (s.insight.daysLeft.getOrNull != null && s.insight.daysLeft.getOrNull! > 0)
                      SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: 0.03.sw),
                        sliver: SliverToBoxAdapter(
                          child: Row(
                            children: [
                              AdaptiveText(
                                '${context.tr.insightCurrentPlan}',
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
                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                                  child: AdaptiveText(
                                    '${context.tr.insightDaysLeft('${s.insight.daysLeft.getOrEmpty}')}',
                                    maxLines: 1,
                                    fontSize: 15.sp,
                                    maxFontSize: 17,
                                    textColor: Palette.accentColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    //
                    if (s.insight.completed.isValid && s.insight.target.isValid && s.insight.progress.isValid)
                      SliverPadding(
                        padding: EdgeInsets.symmetric(
                          horizontal: App.sidePadding,
                        ).copyWith(top: 0.03.sw),
                        sliver: SliverToBoxAdapter(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: App.resolveColor(Palette.cardColorLight, dark: Palette.secondaryColor.shade700),
                              borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
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
                                        title: '${context.tr.completed}',
                                        subtitle: '${s.insight.completed.getOrEmpty}',
                                        color: Palette.pastelGreen,
                                        icon: AmatNow.check_circle,
                                        iconColor: Palette.accentGreen,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                      ),
                                    ),
                                    //
                                    Flexible(
                                      child: _InsightColumn(
                                        title: '${context.tr.target}',
                                        subtitle: '${s.insight.target.getOrEmpty}',
                                        color: Palette.pastelBlue,
                                        icon: AmatNow.target_icon,
                                        iconColor: Palette.accentBlue,
                                      ),
                                    ),
                                    //
                                    Flexible(
                                      child: _InsightColumn(
                                        title: '${context.tr.progress}',
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        subtitle: '${s.insight.progress.getOrEmpty}%',
                                        color: Utils.foldTheme(
                                          light: () => Palette.pastelYellow,
                                          dark: () => Palette.pastelYellow2,
                                        ),
                                        icon: AmatNow.progress_icon,
                                        iconColor: Utils.foldTheme(
                                          light: () => Palette.accentYellow,
                                          dark: () => Palette.accentDarkYellow,
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
                    if (s.insight.progress.getOrNull == 100) ...[
                      if (s.insight.extraDeliveries > 0)
                        SliverPadding(
                          padding: EdgeInsets.symmetric(
                            horizontal: App.sidePadding,
                          ).copyWith(top: 0.04.sw),
                          sliver: SliverToBoxAdapter(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Palette.pastelYellow,
                                borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 0.035.sw,
                                  vertical: 0.03.sw,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.info, color: Palette.accentYellow),
                                    //
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 0.03.sw),
                                        child: AnimatedVisibility(
                                          visible: s.insight.extraDeliveries > 0,
                                          replacement: AdaptiveText(
                                            'You do not have any extra deliveries for this month.',
                                            fontSize: 17.sp,
                                            textColor: Palette.text100,
                                            fontWeight: FontWeight.w400,
                                            height: 1.6,
                                            letterSpacing: Utils.letterSpacing,
                                          ),
                                          child: AdaptiveText(
                                            'Congratulations, '
                                            'you are eligible for ${s.insight.extraDeliveries} '
                                            'extra deliveries at '
                                            '${'${s.insight.bonusPerExtraDelivery.getOrNull ?? 0}'.asCurrency()} '
                                            'per delivery.',
                                            fontSize: 17.sp,
                                            textColor: Palette.text100,
                                            fontWeight: FontWeight.w400,
                                            height: 1.6,
                                            letterSpacing: Utils.letterSpacing,
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
                      //
                      SliverPadding(
                        padding: EdgeInsets.symmetric(
                          horizontal: App.sidePadding,
                        ).copyWith(top: 0.02.h),
                        sliver: SliverToBoxAdapter(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: App.resolveColor(Colors.white, dark: Palette.secondaryColor.shade700),
                              borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
                            ),
                            child: SizedBox(
                              height: 0.16.sh,
                              width: double.infinity,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0.035.sw, vertical: 0.03.sw),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 8,
                                      child: _InsightColumn(
                                        title: '${context.tr.insightExtraDeliveries}',
                                        titleFontSize: 19.0.sp,
                                        subtitle: '${s.insight.completedExtraDeliveries.getOrNull ?? 0}'
                                            ' / '
                                            '${s.insight.totalExtraDeliveries.getOrNull ?? 0}',
                                        color: Palette.accent20,
                                        icon: AmatNow.gift_box,
                                        icon2: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: App.resolveColor(
                                              Palette.neutralF5,
                                              dark: Palette.neutralMoonDark,
                                            ),
                                            borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
                                          ),
                                          child: AnimatedVisibility(
                                            visible: s.insight.canClaimBonus,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 0.03.sw,
                                                vertical: 0.02.sw,
                                              ),
                                              child: Headline(
                                                '${s.insight.currentBonus.getOrEmpty}'.asCurrency(),
                                                fontSize: 15.sp,
                                                textColor: Palette.neutralLabel,
                                                textColorDark: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        iconColor: Palette.accentColor,
                                        padding: EdgeInsets.all(0.02.sw),
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                      ),
                                    ),
                                    //
                                    if (s.insight.canClaimBonus && 1 != 1)
                                      Flexible(
                                        flex: 5,
                                        child: BlocProvider(
                                          create: (_) => getIt<AuthCubit>(),
                                          child: RepositoryProvider(
                                            create: (_) => getIt<UtilitiesRemote>(),
                                            child: Builder(builder: (context) {
                                              return AppOutlinedButton(
                                                text: '${context.tr.insightClaimBonus}',
                                                height: 0.09.sw,
                                                cupertinoHeight: 0.028.sh,
                                                width: 0.3.sw,
                                                cupertinoWidth: 0.3.sw,
                                                isLoading: s.claimBonusLoading,
                                                onPressed: () async {
                                                  context.read<InsightsCubit>().claimBonusLoading(true);

                                                  final account = await context.read<UtilitiesRemote>().bankAccount();

                                                  context.read<InsightsCubit>().claimBonusLoading(false);

                                                  if (account.data == null && navigator.current.name != EditBankDetailsRoute.name)
                                                    unawaited(navigator.navigate(const EditBankDetailsRoute()));
                                                  else {
                                                    await App.showAlertDialog(
                                                      context: c,
                                                      builder: (_) => _ClaimBonusDialogBuilder(
                                                        cubit: c.read<InsightsCubit>(),
                                                        cash: s.insight.cashAtHand,
                                                        account: account.data!.domain,
                                                      ),
                                                    );
                                                  }
                                                },
                                              );
                                            }),
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
                    ],
                    //
                    if (s.insight.cashAtHand.isValid && s.insight.cashAtHand.getOrNull != 0)
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
                                        title: '${context.tr.insightCashAtHand}',
                                        titleFontSize: 19.0.sp,
                                        subtitle: '${s.insight.cashAtHand.getOrEmpty}'.asCurrency(),
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
                                      child: SizedBox(
                                        height: double.infinity,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: App.resolveColor(Palette.pastelPurple),
                                            borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(0.03.sw),
                                            child: Center(
                                              child: AdaptiveText(
                                                'Kindly deposit cash at the office.',
                                                textColor: Palette.accentPurple,
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.5.sp,
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
                          ),
                        ),
                      ),

                    if (s.insight.activities != null && s.insight.activities!.isValid)
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
        ),
      ),
    );
  }
}

class _InsightColumn extends StatelessWidget {
  final Color? color;
  final CrossAxisAlignment crossAxisAlignment;
  final IconData? icon;
  final Widget? icon2;
  final Color? iconColor;
  final EdgeInsets? padding;
  final String subtitle;
  final double? subtitleFontSize;
  final String title;
  final double? titleFontSize;

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
