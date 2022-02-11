import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class AdaptiveScaffold extends StatelessWidget {
  final Key? scaffoldKey;
  final AdaptiveToolbar? adaptiveToolbar;
  final Widget? body;
  final Color? backgroundColor;
  final PlatformNavBar? adaptiveBottomNav;
  final IndexedWidgetBuilder? cupertinoTabBuilder;
  final CupertinoPageScaffoldData Function(BuildContext, PlatformTarget)? cupertino;
  final MaterialScaffoldData Function(BuildContext, PlatformTarget)? material;
  final bool iosContentBottomPadding;
  final bool iosContentPadding;

  const AdaptiveScaffold({
    this.scaffoldKey,
    this.adaptiveToolbar,
    this.adaptiveBottomNav,
    this.body,
    this.backgroundColor,
    this.cupertinoTabBuilder,
    this.cupertino,
    this.material,
    this.iosContentBottomPadding = false,
    this.iosContentPadding = false,
  });

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      widgetKey: scaffoldKey,
      appBar: adaptiveToolbar?.build(),
      body: body,
      backgroundColor: backgroundColor ??
          Utils.platform_(
            cupertino: App.resolveColor(
              Palette.cardColorLight,
              dark: Palette.secondaryColor,
            ),
          ),
      bottomNavBar: adaptiveBottomNav,
      cupertinoTabChildBuilder: cupertinoTabBuilder,
      iosContentBottomPadding: iosContentBottomPadding,
      iosContentPadding: iosContentPadding,
      cupertino: cupertino,
      material: material,
    );
  }
}
