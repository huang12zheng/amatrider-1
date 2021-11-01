library home_page.dart;

import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/horizontal_chip_widget.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kt_dart/collection.dart';

part '../widgets/home_page/send_package_card.dart';

const completeColor = Color(0xff5e6172);
const inProgressColor = Color(0xff5ec792);
const todoColor = Color(0xffd1d2d7);

/// A stateless widget to render HomePage.
class HomePage extends StatefulWidget with AutoRouteWrapper {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RequestCubit>(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<RequestCubit, RequestState>(
            listenWhen: (p, c) => c.currentPackage != null,
            listener: (context, state) {
              //
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
                  listener: (_) => _?.fold(
                    dismissed: () async {
                      if (s.currentPackage != null &&
                          navigator.current.name !=
                              PackageDeliveryAcceptedRoute.name)
                        await navigator.navigate(PackageDeliveryAcceptedRoute(
                            sendPackage: s.currentPackage!));
                    },
                  ),
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

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    onRefresh(context);
  }

  Future<void> onRefresh(BuildContext c) async {
    await BlocProvider.of<RequestCubit>(c).allPackages(c);
    await BlocProvider.of<RequestCubit>(c)
        .allPackages(c, status: SendPackageStatus.ENROUTE_TO_SENDER);
    await BlocProvider.of<RequestCubit>(c)
        .allPackages(c, status: SendPackageStatus.ENROUTE_TO_RECEIVER);
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
                            Headline('In Transit', fontSize: 17.sp),
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
                    bottom: s.packagesInTransit.isEmpty() ? 0 : App.sidePadding,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: AnimatedCrossFade(
                      duration: Utils.crossFadeDuration,
                      layoutBuilder: Utils.crossFadeLayoutBuilder,
                      crossFadeState: (s.isLoadingTransitPackages &&
                              s.packagesInTransit.isEmpty())
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst,
                      secondChild: SizedBox(
                        height: 0.47.sw,
                        child: const Center(
                          child: CircularProgressBar.adaptive(),
                        ),
                      ),
                      firstChild: ListView.custom(
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
                                    package: s.packagesInTransit.getOrNull(i)!,
                                    initialExpanded: s.packagesInTransit
                                            .firstOrNull()
                                            ?.id ==
                                        s.packagesInTransit.getOrNull(i)?.id,
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
                            return s.packagesInTransit.dart.indexWhere((it) =>
                                'in-transit-${it.id.value}' == valueKey.value);
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                //
                //
                //
                if (s.isLoadingActivePackages || !s.activePackages.isEmpty())
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
                                Headline('Active Requests', fontSize: 17.sp),
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
                    child: AnimatedCrossFade(
                      duration: Utils.crossFadeDuration,
                      layoutBuilder: Utils.crossFadeLayoutBuilder,
                      crossFadeState: (s.isLoadingActivePackages &&
                              s.activePackages.isEmpty())
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst,
                      secondChild: SizedBox(
                        height: 0.47.sw,
                        child: const Center(
                          child: CircularProgressBar.adaptive(),
                        ),
                      ),
                      firstChild: ListView.custom(
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
                                    initialExpanded:
                                        s.activePackages.firstOrNull()?.id ==
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
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate.fixed([
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
      ),
    );
  }
}
