import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class AdaptiveScaffoldBuilder extends StatelessWidget {
  @override
  final Key? key;

  final AdaptiveToolbar? Function(BuildContext, int)? adaptiveToolbar;
  final Widget Function(BuildContext, int)? body;
  final void Function(int)? onChanged;
  final Widget Function(BuildContext, int)? cupertinoTabBuilder;
  final PlatformTabController? tabController;
  final CupertinoTabBarData Function(BuildContext, PlatformTarget)?
      cupertinoTabs;
  final MaterialNavBarData Function(BuildContext, PlatformTarget)? materialTabs;
  final CupertinoTabScaffoldData Function(BuildContext, PlatformTarget)?
      cupertino;
  final MaterialTabScaffoldData Function(BuildContext, PlatformTarget)?
      material;
  final CupertinoTabScaffoldData Function(BuildContext, PlatformTarget, int)?
      cupertinoBuilder;
  final MaterialTabScaffoldData Function(BuildContext, PlatformTarget, int)?
      materialBuilder;
  final bool iosContentBottomPadding;
  final bool iosContentPadding;
  final List<BottomNavigationBarItem>? items;
  final Color? pageBackgroundColor;
  final Color? tabsBackgroundColor;

  const AdaptiveScaffoldBuilder({
    this.key,
    this.adaptiveToolbar,
    this.items = const [],
    this.onChanged,
    this.body,
    this.tabController,
    this.pageBackgroundColor,
    this.tabsBackgroundColor,
    this.cupertinoTabBuilder,
    this.cupertino,
    this.material,
    this.cupertinoTabs,
    this.materialTabs,
    this.cupertinoBuilder,
    this.materialBuilder,
    this.iosContentBottomPadding = false,
    this.iosContentPadding = false,
  });

  @override
  Widget build(BuildContext context) {
    return PlatformTabScaffold(
      widgetKey: key,
      appBarBuilder: (_, i) => adaptiveToolbar?.call(_, i)?.build(),
      bodyBuilder: body,
      pageBackgroundColor: pageBackgroundColor,
      tabsBackgroundColor: tabsBackgroundColor,
      items: items,
      itemChanged: onChanged,
      tabController: tabController,
      materialTabs: materialTabs,
      cupertinoTabs: cupertinoTabs,
      cupertinoBuilder: cupertinoBuilder,
      materialBuilder: materialBuilder,
      iosContentBottomPadding: iosContentBottomPadding,
      iosContentPadding: iosContentPadding,
      cupertino: cupertino,
      material: material,
    );
  }
}
