library home_page.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kt_dart/collection.dart';

part '../widgets/home_page/send_package_card.dart';

/// A stateless widget to render HomePage.
class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static Future<void> onRefresh(BuildContext c, [DragToRefreshState? controller]) async {
    await c.read<LocationCubit>().showPermissionRationale(c, callback: () async {
      Future.delayed(const Duration(seconds: 1, milliseconds: 500), () async {
        await c.read<RequestCubit>().allDeliverables(c);
        await c.read<RequestCubit>().allInTransit(c);
        if (controller != null) controller = controller!..refreshCompleted();
      });
    });
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late RequestCubit _cubit;

  DragToRefreshState? controller;

  @override
  void initState() {
    super.initState();
    final rider = context.read<AuthWatcherCubit>().state.rider;
    _cubit = context.read<RequestCubit>()..echo(rider!);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _cubit,
      child: MultiBlocListener(
        listeners: [
          BlocListener<RequestCubit, RequestState>(
            listenWhen: (p, c) => p.current != c.current,
            listener: (c, s) {
              if (s.current != null && navigator.current.name != PackageDeliveryAcceptedRoute.name) {
                navigator.navigate(PackageDeliveryAcceptedRoute(
                  deliverable: s.current!,
                  onDelivered: (deliverable) => c.read<RequestCubit>().markAsDelivered(deliverable),
                ));
              }

              // Reset current package to null
              c.read<RequestCubit>().setCurrent(null);
            },
          ),
          //
          BlocListener<RequestCubit, RequestState>(
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
                success: (s) => PopupDialog.success(duration: const Duration(seconds: 2), message: s.message).render(c),
              ),
            ),
          ),
        ],
        child: AdaptiveScaffold(
          adaptiveToolbar: AdaptiveToolbar(
            tooltip: 'Menu',
            showCustomLeading: Utils.platform_(material: true, cupertino: false),
            implyLeading: false,
            cupertinoImplyLeading: false,
            leadingAction: () => ref.read(scaffoldController.notifier).open,
            leadingIcon: App.platform.material(
              PlatformIconButton(
                materialIcon: const Icon(Icons.menu),
                cupertinoIcon: const Icon(CupertinoIcons.bars),
                onPressed: ref.read(scaffoldController.notifier).open,
              ),
            ),
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
              const AvailablilityWidget(),
            ],
          ),
          body: AdaptiveScaffoldBody(
            builder: (c) => SafeArea(
              child: DragToRefresh(
                initialRefresh: true,
                onRefresh: (controller) => HomePage.onRefresh(c, controller),
                child: BlocBuilder<RequestCubit, RequestState>(
                  builder: (c, s) => CustomScrollView(
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
                            BlocSelector<AuthWatcherCubit, AuthWatcherState, Rider?>(
                              selector: (s) => s.rider,
                              builder: (c, rider) => AdaptiveText(
                                '${tr.greeting('${rider?.firstName.getOrEmpty}')}! 👋',
                                softWrap: true,
                                style: TextStyle(
                                  fontSize: 17.0.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            //
                            VerticalSpace(height: 0.03.sw),
                            //
                            AdaptiveText(
                              '${tr.homePageTxt2}',
                              softWrap: true,
                              style: TextStyle(
                                fontSize: 25.0.sp,
                                fontWeight: FontWeight.w600,
                                letterSpacing: Utils.letterSpacing,
                              ),
                            ),
                            //
                            VerticalSpace(height: 0.05.sw),
                          ]),
                        ),
                      ),
                      if (s.isLoadingInTransit || !s.inTransit.isEmpty())
                        SliverPadding(
                          padding: EdgeInsets.symmetric(
                            horizontal: App.sidePadding,
                          ).copyWith(left: 0.06.sw),
                          sliver: SliverToBoxAdapter(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Headline('${tr.inTransit}', fontSize: 17.sp),
                                  //
                                  if (!s.inTransit.isEmpty())
                                    Headline(
                                      '(${s.inTransit.size})',
                                      fontSize: 15.5.sp,
                                      textColor: Palette.accentColor,
                                    ),
                                ]),
                                //
                                VerticalSpace(height: 0.02.sw),
                              ],
                            ),
                          ),
                        ),
                      //
                      SliverPadding(
                        padding: EdgeInsets.symmetric(
                          horizontal: App.sidePadding,
                        ).copyWith(
                          top: s.inTransit.isEmpty() ? 0 : 0.02.sw,
                          bottom: s.inTransit.isEmpty() ? 0 : App.sidePadding,
                        ),
                        sliver: SliverToBoxAdapter(
                          child: AnimatedVisibility(
                            duration: const Duration(milliseconds: 700),
                            visible: !(s.isLoadingInTransit && s.inTransit.isEmpty()),
                            replacement: AnimatedVisibility(
                              duration: const Duration(milliseconds: 800),
                              visible: s.isLoadingInTransit,
                              replacement: Utils.nothing,
                              child: ExpandableShimmer.list(
                                count: 2,
                                initialExpanded: (i) => i == 0,
                                footer: ExpandableShimmerFooter.single,
                              ),
                            ),
                            child: ListView.custom(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              controller: ScrollController(),
                              physics: const NeverScrollableScrollPhysics(),
                              semanticChildCount: s.inTransit.size,
                              clipBehavior: Clip.antiAlias,
                              childrenDelegate: SliverChildBuilderDelegate(
                                (_, i) => Column(
                                  key: ValueKey('in-transit-${s.inTransit.getOrNull(i)?.id.value}'),
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Flexible(
                                      child: _DeliverableCard(
                                        item: s.inTransit.get(i),
                                        initialExpanded: s.inTransit.firstOrNull()?.id == s.inTransit.get(i).id,
                                        onAccept: () => HomePage.onRefresh(c),
                                        onDecline: () => HomePage.onRefresh(c),
                                      ),
                                    ),
                                    //
                                    if (i != s.inTransit.size - 1) VerticalSpace(height: 0.03.sw)
                                  ],
                                ),
                                childCount: s.inTransit.size,
                                findChildIndexCallback: (key) {
                                  final valueKey = key as ValueKey<String>;
                                  return s.inTransit.dart.indexWhere((it) => 'in-transit-${it.id.value}' == valueKey.value);
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      //
                      //
                      //
                      if (s.isLoadingActive || !s.active.isEmpty())
                        SliverPadding(
                          padding: EdgeInsets.symmetric(
                            horizontal: App.sidePadding,
                          ).copyWith(left: 0.06.sw),
                          sliver: SliverToBoxAdapter(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      Headline('${tr.activeRequests}', fontSize: 17.sp),
                                      //
                                      if (!s.active.isEmpty())
                                        Headline(
                                          '(${s.active.size})',
                                          fontSize: 15.5.sp,
                                          textColor: Palette.accentColor,
                                        ),
                                    ]),
                                    //
                                    if (s.isAccepting)
                                      Center(
                                        child: CircularProgressBar.adaptive(
                                          height: 0.05.sw,
                                          width: 0.05.sw,
                                          strokeWidth: 2,
                                        ),
                                      ),
                                  ],
                                ),
                                //
                                VerticalSpace(height: 0.02.sw),
                              ],
                            ),
                          ),
                        ),
                      //
                      SliverPadding(
                        padding: EdgeInsets.symmetric(
                          horizontal: App.sidePadding,
                        ).copyWith(top: s.active.isEmpty() ? 0 : 0.02.sw),
                        sliver: SliverToBoxAdapter(
                          child: AnimatedVisibility(
                            duration: const Duration(milliseconds: 700),
                            visible: !(s.isLoadingActive && s.active.isEmpty()),
                            replacement: AnimatedVisibility(
                              duration: const Duration(milliseconds: 800),
                              visible: s.isLoadingActive,
                              replacement: Utils.nothing,
                              child: ExpandableShimmer.list(
                                count: 4,
                                initialExpanded: (i) => i == 0,
                              ),
                            ),
                            child: ListView.custom(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              controller: ScrollController(),
                              physics: const NeverScrollableScrollPhysics(),
                              semanticChildCount: s.active.size,
                              clipBehavior: Clip.antiAlias,
                              childrenDelegate: SliverChildBuilderDelegate(
                                (_, i) => Column(
                                  key: ValueKey('active-${s.active.getOrNull(i)?.id.value}'),
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (s.active.getOrNull(i) != null)
                                      Flexible(
                                        child: _DeliverableCard(
                                          item: s.active.getOrNull(i)!,
                                          initialExpanded: s.active.firstOrNull()?.id == s.active.getOrNull(i)?.id,
                                          onAccept: () => HomePage.onRefresh(c),
                                          onDecline: () => HomePage.onRefresh(c),
                                        ),
                                      ),
                                    //
                                    if (s.active.getOrNull(i) != null)
                                      if (i != s.active.size - 1) VerticalSpace(height: 0.03.sw)
                                  ],
                                ),
                                childCount: s.active.size,
                                findChildIndexCallback: (key) {
                                  final valueKey = key as ValueKey<String>;
                                  return s.active.dart.indexWhere((it) => 'active-${it.id.value}' == valueKey.value);
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      //
                      //
                      //
                      if (s.isLoadingActive || !s.potential.isEmpty())
                        SliverPadding(
                          padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(left: 0.06.sw),
                          sliver: SliverToBoxAdapter(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (s.active.isNotEmpty()) VerticalSpace(height: 0.02.h),
                                //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      Headline('Potential Requests', fontSize: 17.sp),
                                      //
                                      if (!s.potential.isEmpty())
                                        Headline(
                                          '(${s.potential.size})',
                                          fontSize: 15.5.sp,
                                          textColor: Palette.accentColor,
                                        ),
                                    ]),
                                  ],
                                ),
                                //
                                VerticalSpace(height: 0.01.h),
                              ],
                            ),
                          ),
                        ),
                      //
                      SliverPadding(
                        padding: EdgeInsets.symmetric(
                          horizontal: App.sidePadding,
                        ).copyWith(top: s.potential.isEmpty() ? 0 : 0.02.sw),
                        sliver: SliverToBoxAdapter(
                          child: AnimatedVisibility(
                            duration: const Duration(milliseconds: 700),
                            visible: !(s.isLoadingActive && s.potential.isEmpty()),
                            replacement: AnimatedVisibility(
                              duration: const Duration(milliseconds: 800),
                              visible: s.isLoadingActive,
                              replacement: Utils.nothing,
                              child: const ExpandableShimmer.list(count: 2),
                            ),
                            child: ListView.custom(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              controller: ScrollController(),
                              physics: const NeverScrollableScrollPhysics(),
                              semanticChildCount: s.potential.size,
                              clipBehavior: Clip.antiAlias,
                              childrenDelegate: SliverChildBuilderDelegate(
                                (_, i) => Column(
                                  key: ValueKey('potential-${s.potential.getOrNull(i)?.id.value}'),
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (s.potential.getOrNull(i) != null)
                                      Flexible(
                                        child: _DeliverableCard(
                                          item: s.potential.getOrNull(i)!,
                                          isPotential: true,
                                          initialExpanded: false,
                                          onAccept: () => HomePage.onRefresh(c),
                                          onDecline: () => HomePage.onRefresh(c),
                                        ),
                                      ),
                                    //
                                    if (s.potential.getOrNull(i) != null)
                                      if (i != s.potential.size - 1) VerticalSpace(height: 0.03.sw)
                                  ],
                                ),
                                childCount: s.potential.size,
                                findChildIndexCallback: (key) {
                                  final valueKey = key as ValueKey<String>;
                                  return s.potential.dart.indexWhere((it) => 'potential-${it.id.value}' == valueKey.value);
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      //
                      if (s.isLoadingActive || !s.potential.isEmpty()) SliverToBoxAdapter(child: 0.02.verticalh),
                      //
                      if ((!s.isLoadingActive && !s.isLoadingInTransit) &&
                          (s.active.isEmpty() && s.inTransit.isEmpty() && s.potential.isEmpty()))
                        SliverToBoxAdapter(
                          child: EmptyStateWidget(
                            asset: right(AppAssets.noRequest),
                            height: 0.6.h,
                            useScaffold: false,
                            title: 'No Request Yet',
                            description: 'Please check back later.',
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
