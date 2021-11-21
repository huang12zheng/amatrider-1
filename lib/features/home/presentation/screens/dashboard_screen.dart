library dashboard_screen.dart;

import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/pages/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/manager/settings/index.dart';
import 'package:amatrider/utils/utils.dart'
    hide HomePage, HistoryPage, InsightsPage, ProfilePage;
import 'package:amatrider/widgets/adaptive/adaptive.dart';
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
import 'package:fluttertoast/fluttertoast.dart';

/// A stateless widget to render DashboardScreen.
class DashboardScreen extends ConsumerStatefulWidget with AutoRouteWrapper {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    context.read<GlobalAppPreferenceCubit>().updateLaunchSettings();
    return BlocProvider(
      create: (_) => getIt<TabNavigationCubit>(),
      child: this,
    );
  }
}

class _DashboardScreenState extends ConsumerState<DashboardScreen>
    with AutomaticKeepAliveClientMixin<DashboardScreen> {
  static final _tabs = [
    const HomePage(),
    const HistoryPage(),
    const InsightsPage(),
    const ProfilePage(),
  ];

  final AsyncMemoizer<dynamic> _memoizer = AsyncMemoizer();
  DateTime _timestampPressed = DateTime.now();

  @override
  bool get wantKeepAlive => true;

  Future<bool> maybePop() async {
    if (ref.watch(scaffoldController.notifier).isOpen)
      return Future.value(true);

    final now = DateTime.now();
    final difference = now.difference(_timestampPressed);
    final _showWarn = difference >= Utils.willPopTimeout;

    _timestampPressed = DateTime.now();

    if (_showWarn) {
      await Fluttertoast.showToast(
        msg: 'Tap again to exit',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      return Future.value(false);
    } else {
      await Fluttertoast.cancel();
      return Future.value(true);
    }
  }

  Widget guestUserImage(TabNavigationState s, Destination i) => CircleAvatar(
        backgroundImage: Image.asset(AppAssets.guestAvatarPng).image,
        maxRadius: s.currentIndex == i.id ? 16 : 15,
        minRadius: 14,
        backgroundColor: Colors.transparent,
      );

  Widget defaultImage(TabNavigationState s, Destination i) => CircleAvatar(
        backgroundImage: Image.asset(AppAssets.unnamed).image,
        maxRadius: s.currentIndex == i.id ? 16 : 15,
        minRadius: 14,
        backgroundColor: Colors.transparent,
      );

  List<BottomNavigationBarItem> navItems(TabNavigationState s) {
    return Destination.list
        .map(
          (i) => BottomNavigationBarItem(
            label: i.title,
            icon: i == Destination.list.last
                ? BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
                    buildWhen: (p, c) => p.rider?.photo != c.rider?.photo,
                    builder: (c, _s) {
                      if (_s.rider == null) return guestUserImage(s, i);

                      return _s.rider!.photo.ensure(
                        (it) => CachedNetworkImage(
                          imageUrl: '${it.getOrEmpty}',
                          fit: BoxFit.contain,
                          height: 24,
                          imageBuilder: (c, img) => CircleAvatar(
                            backgroundImage: img,
                            maxRadius: s.currentIndex == i.id ? 16 : 14,
                            minRadius: 14,
                            backgroundColor: Colors.transparent,
                          ),
                          progressIndicatorBuilder: (_, url, download) =>
                              Center(
                            child: CircularProgressBar.adaptive(
                              value: download.progress,
                              strokeWidth: 2,
                              width: 24,
                              height: 24,
                            ),
                          ),
                          errorWidget: (_, url, error) => defaultImage(s, i),
                        ),
                        orElse: (_) => defaultImage(s, i),
                      );
                    },
                  )
                : Icon(
                    i.icon,
                    color: s.currentIndex == i.id
                        ? Utils.foldTheme(
                            light: () => Palette.accentColor,
                            dark: () => Palette.accentColor.shade100,
                          )
                        : Colors.grey,
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
            if (context.read<TabNavigationCubit>().state.isInit)
              context.read<TabNavigationCubit>().init(context);
          });

          return BlocBuilder<TabNavigationCubit, TabNavigationState>(
            builder: (c, s) => InnerDrawer(
              key: ref.watch(scaffoldController),
              onTapClose: true,
              swipe: true,
              offset: const IDOffset.horizontal(0.5),
              proportionalChildArea: true,
              borderRadius: 0,
              leftAnimationType: InnerDrawerAnimation.static,
              leftChild: const SideDrawerWidget(),
              scaffold: FutureBuilder(
                future: _memoizer.runOnce(() async {
                  final cubit = BlocProvider.of<AuthWatcherCubit>(App.context);
                  await cubit.subscribeUserChanges();

                  // Start laravel echo (notifications) & Fetch latest notifications
                  BlocProvider.of<NotificationCubit>(context)
                    // ignore: unawaited_futures
                    ..inAppNotifications()
                    ..echo();

                  final locationCubit = BlocProvider.of<LocationCubit>(context);

                  final hasPermission = await locationCubit.hasPermission;
                  if (!hasPermission) if (navigator.current.name !=
                      AccessRoute.name)
                    await navigator.push(AccessRoute(
                      title: 'Kindly Grant Location Access',
                      onWillPop: () => locationCubit.requestPermission(),
                      content: 'Your location is needed in calculating '
                          'accurate distance and delivery time.',
                      additionalContent: AdaptiveText.rich(
                        const TextSpan(children: [
                          TextSpan(text: 'It’s safe to grant '),
                          TextSpan(
                            text: '${Const.appName}',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          TextSpan(text: ' location access. '),
                          TextSpan(text: 'It makes the system work better. '),
                          TextSpan(text: 'Thank you.'),
                        ]),
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: Utils.letterSpacing,
                        softWrap: true,
                      ),
                      onAccept: () async {
                        final _granted =
                            await locationCubit.requestPermission();
                        return _granted;
                      },
                    ));
                }),
                builder: (_, snapshot) => AdaptiveScaffold(
                  cupertinoTabBuilder: (_, i) => _tabs[i],
                  body: FadeTransition(opacity: animation, child: child),
                  adaptiveBottomNav: PlatformNavBar(
                    items: navItems(s),
                    currentIndex: s.currentIndex,
                    material: (_, __) => MaterialNavBarData(
                      elevation: 0.0,
                      type: BottomNavigationBarType.fixed,
                      unselectedItemColor: Colors.grey,
                      selectedItemColor: Utils.foldTheme(
                        light: () => Palette.accentColor,
                        dark: () => Palette.accentColor.shade100,
                      ),
                    ),
                    cupertino: (_, __) => CupertinoTabBarData(
                      iconSize: 20,
                      inactiveColor: Colors.grey,
                      currentIndex: s.currentIndex,
                      activeColor: Utils.foldTheme(
                        light: () => Palette.accentColor,
                        dark: () => Palette.accentColor.shade100,
                      ),
                    ),
                    itemChanged: (i) =>
                        c.read<TabNavigationCubit>().setCurrentIndex(c, i),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
