import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/pages/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart'
    hide HomePage, HistoryPage, InsightsPage, ProfilePage;
import 'package:amatrider/widgets/adaptive/adaptive.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// A stateless widget to render DashboardScreen.
class DashboardScreen extends ConsumerStatefulWidget with AutoRouteWrapper {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<TabNavigationCubit>(),
        child: this,
      );
}

class _DashboardScreenState extends ConsumerState<DashboardScreen>
    with AutomaticKeepAliveClientMixin<DashboardScreen> {
  DateTime _timestampPressed = DateTime.now();

  static final _tabs = [
    const HomePage(),
    const HistoryPage(),
    const InsightsPage(),
    const ProfilePage(),
  ];

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
              proportionalChildArea: true, // default true
              borderRadius: 0,
              leftAnimationType: InnerDrawerAnimation.static,
              innerDrawerCallback: (a) => print('Side drawer is open ==> $a'),
              leftChild: const SideDrawerWidget(),
              scaffold: AdaptiveScaffold(
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
          );
        },
      ),
    );
  }

  Widget defaultImage(TabNavigationState s, Destination i) => CircleAvatar(
        backgroundImage: Image.asset(AppAssets.guestAvatarPng).image,
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
                ? defaultImage(s, i)
                : SvgPicture.asset(
                    i.icon,
                    height: s.currentIndex == i.id ? 30 : 25,
                    width: s.currentIndex == i.id ? 30 : 25,
                    fit: BoxFit.contain,
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
}
