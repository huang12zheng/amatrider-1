library home_page.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/horizontal_chip_widget.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kt_dart/collection.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part '../widgets/home_page/send_package_card.dart';

/// A stateless widget to render HomePage.
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late RequestCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<RequestCubit>()..echo();
  }

  Future<void> onRefresh(BuildContext c, RefreshController controller) async {
    _cubit.clearList();
    await _cubit.allPackages(c);
    await _cubit.allPackages(c, status: SendPackageStatus.ENROUTE_TO_SENDER);
    await _cubit.allPackages(c, status: SendPackageStatus.ENROUTE_TO_RECEIVER);
    controller.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _cubit,
      child: MultiBlocListener(
        listeners: [
          BlocListener<RequestCubit, RequestState>(
            listenWhen: (p, c) => p.currentPackage != c.currentPackage,
            listener: (c, s) {
              if (s.currentPackage != null &&
                  navigator.current.name != PackageDeliveryAcceptedRoute.name)
                navigator.navigate(PackageDeliveryAcceptedRoute(
                    sendPackage: s.currentPackage!));

              // Reset current package to null
              c.read<RequestCubit>().setCurrentPackage(null);
            },
          ),
          //
          BlocListener<RequestCubit, RequestState>(
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
        child: AdaptiveScaffold(
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
            actions: [const AvailablilityWidget()],
          ),
          body: SafeArea(
            child: DragToRefresh(
              initialRefresh: true,
              onRefresh: (controller) => onRefresh(context, controller),
              child: BlocBuilder<RequestCubit, RequestState>(
                builder: (c, s) => CustomScrollView(
                  shrinkWrap: true,
                  physics: Utils.physics,
                  scrollDirection: Axis.vertical,
                  controller: ScrollController(),
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.symmetric(
                        horizontal: App.sidePadding,
                      ).copyWith(top: App.longest * 0.01),
                      sliver: SliverList(
                        delegate: SliverChildListDelegate.fixed([
                          BlocSelector<AuthWatcherCubit, AuthWatcherState,
                              Rider?>(
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
                    if (s.isLoadingTransitPackages ||
                        !s.packagesInTransit.isEmpty())
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
                                if (!s.packagesInTransit.isEmpty())
                                  Headline(
                                    '(${s.packagesInTransit.size})',
                                    fontSize: 15.5.sp,
                                    textColorLight: Palette.accentColor,
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
                        top: s.packagesInTransit.isEmpty() ? 0 : 0.02.sw,
                        bottom:
                            s.packagesInTransit.isEmpty() ? 0 : App.sidePadding,
                      ),
                      sliver: SliverToBoxAdapter(
                        child: WidgetVisibility(
                          duration: const Duration(milliseconds: 700),
                          visible: !(s.isLoadingTransitPackages &&
                              s.packagesInTransit.isEmpty()),
                          replacement: WidgetVisibility(
                            duration: const Duration(milliseconds: 800),
                            visible: s.isLoadingTransitPackages,
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
                            semanticChildCount: s.packagesInTransit.size,
                            clipBehavior: Clip.antiAlias,
                            childrenDelegate: SliverChildBuilderDelegate(
                              (_, i) => Column(
                                key: ValueKey('in-transit-'
                                    '${s.packagesInTransit.getOrNull(i)?.id.value}'),
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (s.packagesInTransit.getOrNull(i) != null)
                                    Flexible(
                                      child: _SendPackageCard(
                                        package:
                                            s.packagesInTransit.getOrNull(i)!,
                                        initialExpanded: s.packagesInTransit
                                                .firstOrNull()
                                                ?.id ==
                                            s.packagesInTransit
                                                .getOrNull(i)
                                                ?.id,
                                      ),
                                    ),
                                  //
                                  if (s.packagesInTransit.getOrNull(i) != null)
                                    if (i != s.packagesInTransit.size - 1)
                                      VerticalSpace(height: 0.03.sw)
                                ],
                              ),
                              childCount: s.packagesInTransit.size,
                              findChildIndexCallback: (key) {
                                final valueKey = key as ValueKey<String>;
                                return s.packagesInTransit.dart.indexWhere(
                                    (it) =>
                                        'in-transit-${it.id.value}' ==
                                        valueKey.value);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    //
                    //
                    //
                    if (s.isLoadingActivePackages ||
                        !s.activePackages.isEmpty())
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Headline('${tr.activeRequests}',
                                        fontSize: 17.sp),
                                    //
                                    if (!s.activePackages.isEmpty())
                                      Headline(
                                        '(${s.activePackages.size})',
                                        fontSize: 15.5.sp,
                                        textColorLight: Palette.accentColor,
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
                      ).copyWith(top: s.activePackages.isEmpty() ? 0 : 0.02.sw),
                      sliver: SliverToBoxAdapter(
                        child: WidgetVisibility(
                          duration: const Duration(milliseconds: 700),
                          visible: !(s.isLoadingActivePackages &&
                              s.activePackages.isEmpty()),
                          replacement: WidgetVisibility(
                            duration: const Duration(milliseconds: 800),
                            visible: s.isLoadingActivePackages,
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
                            semanticChildCount: s.activePackages.size,
                            clipBehavior: Clip.antiAlias,
                            childrenDelegate: SliverChildBuilderDelegate(
                              (_, i) => Column(
                                key: ValueKey('active-'
                                    '${s.activePackages.getOrNull(i)?.id.value}'),
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (s.activePackages.getOrNull(i) != null)
                                    Flexible(
                                      child: _SendPackageCard(
                                        package: s.activePackages.getOrNull(i)!,
                                        initialExpanded: s.activePackages
                                                .firstOrNull()
                                                ?.id ==
                                            s.activePackages.getOrNull(i)?.id,
                                      ),
                                    ),
                                  //
                                  if (s.activePackages.getOrNull(i) != null)
                                    if (i != s.activePackages.size - 1)
                                      VerticalSpace(height: 0.03.sw)
                                ],
                              ),
                              childCount: s.activePackages.size,
                              findChildIndexCallback: (key) {
                                final valueKey = key as ValueKey<String>;
                                return s.activePackages.dart.indexWhere((it) =>
                                    'active-${it.id.value}' == valueKey.value);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    //
                    // SliverPadding(
                    //   padding: EdgeInsets.symmetric(
                    //     horizontal: App.sidePadding,
                    //   ).copyWith(top: s.activePackages.isEmpty() ? 0 : 0.02.sw),
                    //   sliver: SliverToBoxAdapter(
                    //     child: ExpandableShimmer.list(
                    //       count: 2,
                    //       initialExpanded: (i) => i == 1,
                    //       footer: ExpandableShimmerFooter.single,
                    //     ),
                    //   ),
                    // ),
                    if ((!s.isLoadingActivePackages &&
                            !s.isLoadingTransitPackages &&
                            !s.isLoadingTransitPackages) &&
                        (s.activePackages.isEmpty() &&
                            s.potentialPackages.isEmpty() &&
                            s.potentialPackages.isEmpty()))
                      SliverToBoxAdapter(
                        child: StageOwnerWidget(
                          asset: right(AppAssets.noRequest),
                          height: 0.7.h,
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
    );
  }
}
