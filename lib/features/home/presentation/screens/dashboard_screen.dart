library dashboard_screen.dart;

import 'dart:async';

import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/manager/settings/index.dart';
import 'package:amatrider/utils/utils.dart' hide HomePage, HistoryPage, InsightsPage, ProfilePage;
import 'package:amatrider/widgets/widgets.dart';
import 'package:async/async.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A stateless widget to render DashboardScreen.
class DashboardScreen extends ConsumerStatefulWidget with AutoRouteWrapper {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    context.read<GlobalAppPreferenceCubit>().updateLaunchSettings();
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: BlocProvider.of<TabNavigationCubit>(context)),
        BlocProvider(create: (_) => getIt<RequestCubit>()),
      ],
      child: this,
    );
  }
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> with AutomaticKeepAliveClientMixin<DashboardScreen> {
  final AsyncMemoizer<dynamic> _memoizer = AsyncMemoizer();
  DateTime _timestampPressed = DateTime.now();

  @override
  bool get wantKeepAlive => true;

  Future<bool> maybePop() async {
    if (ref.watch(scaffoldController.notifier).isOpen) return Future.value(true);

    final now = DateTime.now();
    final difference = now.difference(_timestampPressed);
    final _showWarn = difference >= Utils.willPopTimeout;

    _timestampPressed = DateTime.now();

    if (_showWarn) {
      await ToastManager.short('Tap again to exit');
      return Future.value(false);
    } else {
      await ToastManager.cancel();
      return Future.value(true);
    }
  }

  Widget guestUserImage(int currentIndex, Destination i) => CircleAvatar(
        backgroundImage: Image.asset(AppAssets.guestAvatarPng).image,
        maxRadius: currentIndex == i.id ? 16 : 15,
        minRadius: 14,
        backgroundColor: Colors.transparent,
      );

  Widget defaultImage(int currentIndex, Destination i) => CircleAvatar(
        backgroundImage: Image.asset(AppAssets.guestAvatarPng).image,
        maxRadius: currentIndex == i.id ? 16 : 15,
        minRadius: 14,
        backgroundColor: Colors.transparent,
      );

  List<BottomNavigationBarItem> navItems(int currentIndex) {
    return Destination.list
        .map(
          (i) => BottomNavigationBarItem(
            label: i.title,
            icon: i == Destination.list.last
                ? BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
                    buildWhen: (p, c) => p.rider?.photo != c.rider?.photo,
                    builder: (c, _s) {
                      if (_s.rider == null) return guestUserImage(currentIndex, i);

                      return _s.rider!.photo.ensure(
                        (it) => CachedNetworkImage(
                          imageUrl: '${it.getOrEmpty}',
                          fit: BoxFit.contain,
                          height: 25,
                          imageBuilder: (c, img) => CircleAvatar(
                            backgroundImage: img,
                            maxRadius: currentIndex == i.id ? 16 : 15,
                            minRadius: 14,
                            backgroundColor: Colors.transparent,
                          ),
                          progressIndicatorBuilder: (_, url, download) => Center(
                            child: CircularProgressBar.adaptive(
                              value: download.progress,
                              strokeWidth: 2,
                              width: 30,
                              height: 30,
                            ),
                          ),
                          errorWidget: (_, url, error) => defaultImage(currentIndex, i),
                        ),
                        orElse: (_) => defaultImage(currentIndex, i),
                      );
                    },
                  )
                : Icon(
                    i.icon,
                    color: currentIndex == i.id ? App.resolveColor(Palette.accentColor, dark: Palette.accentColor.shade100) : Colors.grey,
                  ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return WillPopScope(
      onWillPop: maybePop,
      child: AutoTabsRouter(
        routes: [
          const HomeRouter(),
          const HistoryRouter(),
          const InsightRouter(),
          const ProfileRouter(),
        ],
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOutCubic,
        builder: (context, child, animation) {
          WidgetsBinding.instance!.addPostFrameCallback((_) {
            if (context.read<TabNavigationCubit>().state.isInit) {
              context.read<TabNavigationCubit>().updateTabsRouter(context.tabsRouter);
              context.read<TabNavigationCubit>().init(context);
            }
          });

          return BlocBuilder<TabNavigationCubit, TabNavigationState>(
            buildWhen: (p, c) => p.currentIndex != c.currentIndex,
            builder: (c, s) {
              final currentIndex = s.currentIndex;

              return InnerDrawer(
                key: ref.watch(scaffoldController),
                onTapClose: true,
                swipe: false,
                offset: const IDOffset.horizontal(0.5),
                proportionalChildArea: true,
                borderRadius: 0,
                leftAnimationType: InnerDrawerAnimation.static,
                leftChild: const SideDrawerWidget(),
                scaffold: FutureBuilder(
                  future: _memoizer.runOnce(
                    () async {
                      final cubit = BlocProvider.of<AuthWatcherCubit>(App.context);
                      await cubit.subscribeUserChanges();

                      cubit.subscribeToProfileUpdate();

                      // Start laravel echo (notifications) & Fetch latest notifications
                      BlocProvider.of<NotificationCubit>(context).echo();
                    },
                  ),
                  builder: (_, snapshot) => AdaptiveScaffold(
                    cupertinoTabBuilder: (_, i) => s.tabs.toList()[i].values.first,
                    body: FadeTransition(opacity: animation, child: child),
                    adaptiveBottomNav: PlatformNavBar(
                      items: navItems(currentIndex),
                      currentIndex: currentIndex,
                      material: (_, __) => MaterialNavBarData(
                        elevation: 0.0,
                        type: BottomNavigationBarType.fixed,
                        unselectedItemColor: Colors.grey,
                        selectedItemColor: App.resolveColor(Palette.accentColor, dark: Palette.accentColor.shade100),
                      ),
                      cupertino: (_, __) => CupertinoTabBarData(
                        iconSize: 20,
                        backgroundColor: App.resolveColor(
                          CupertinoColors.lightBackgroundGray.withAlpha(254),
                          dark: CupertinoColors.quaternarySystemFill,
                        )!,
                        // border: Border.symmetric(
                        //   vertical: BorderSide(
                        //     color: Colors.grey,
                        //     width: 0,
                        //   ),
                        // ),
                        inactiveColor: Colors.grey,
                        currentIndex: currentIndex,
                        activeColor: App.resolveColor(Palette.accentColor, dark: Palette.accentColor.shade100),
                      ),
                      itemChanged: (i) => c.read<TabNavigationCubit>().setCurrentIndex(context, i),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
