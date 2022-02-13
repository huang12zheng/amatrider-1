library app_sliver_scrollview.dart;

import 'package:enough_platform_widgets/platform.dart';
import 'package:flutter/material.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';

/// A stateless widget to render AppSliverScrollView.
class AppSliverScrollView extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final bool hasAppBar;
  final bool implyMiddle;
  final bool? autoImplyLeading;
  final bool? cupertinoAutoImplyLeading;
  final List<Widget> slivers;
  final ScrollPhysics? physics;
  final ScrollController? controller;
  final Color? scaffoldBackgroundColor;
  final bool useSafeArea;
  final double? titleTopPadding;
  final double? subtitleTopPadding;
  final ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;
  final List<Widget> actions;
  final bool initialRefresh;
  final bool isPaginated;
  final bool enablePullDown;
  final bool enablePullUp;
  final void Function(DragToRefreshState)? onRefresh;
  final void Function(DragToRefreshState)? onLoading;
  final bool resizeToAvoidBottomInsetTab;
  final bool resizeToAvoidBottomInset;
  final bool _scaffold;

  const AppSliverScrollView({
    Key? key,
    required this.slivers,
    this.title,
    this.subtitle,
    this.hasAppBar = true,
    this.implyMiddle = false,
    this.autoImplyLeading,
    this.cupertinoAutoImplyLeading,
    this.physics,
    this.controller,
    this.useSafeArea = false,
    this.titleTopPadding,
    this.subtitleTopPadding,
    this.scaffoldBackgroundColor,
    this.keyboardDismissBehavior,
    this.actions = const [],
    this.initialRefresh = true,
    this.isPaginated = false,
    this.enablePullDown = true,
    this.enablePullUp = false,
    this.onRefresh,
    this.onLoading,
    this.resizeToAvoidBottomInsetTab = false,
    this.resizeToAvoidBottomInset = false,
  })  : _scaffold = false,
        super(key: key);

  const AppSliverScrollView.scaffold({
    Key? key,
    required this.slivers,
    this.title,
    this.subtitle,
    this.hasAppBar = true,
    this.implyMiddle = false,
    this.autoImplyLeading,
    this.cupertinoAutoImplyLeading,
    this.physics,
    this.controller,
    this.useSafeArea = false,
    this.titleTopPadding,
    this.subtitleTopPadding,
    this.scaffoldBackgroundColor,
    this.keyboardDismissBehavior,
    this.actions = const [],
    this.initialRefresh = true,
    this.isPaginated = false,
    this.enablePullDown = true,
    this.enablePullUp = false,
    this.onRefresh,
    this.onLoading,
    this.resizeToAvoidBottomInsetTab = false,
    this.resizeToAvoidBottomInset = false,
  })  : _scaffold = true,
        super(key: key);

  Widget get _scrollView => CustomScrollView(
        physics: physics ?? Utils.physics,
        scrollDirection: Axis.vertical,
        controller: controller ?? ScrollController(),
        keyboardDismissBehavior: keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          if (title != null)
            if (App.platform.isAndroid)
              SliverSafeArea(
                top: useSafeArea,
                left: false,
                right: false,
                bottom: Utils.platform_(material: true, cupertino: false)!,
                sliver: SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: titleTopPadding ?? 0.005.h),
                  sliver: SliverToBoxAdapter(
                    child: AdaptiveText(
                      '$title',
                      style: App.titleStyle,
                      textColorDark: const Color(0xFFFDFDFD),
                    ),
                  ),
                ),
              ),
          //
          if (subtitle != null)
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: subtitleTopPadding ?? 0.014.h),
              sliver: SliverToBoxAdapter(
                child: AdaptiveText(
                  '$subtitle',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          //
          ...slivers,
        ],
      );

  Widget get _body => SafeArea(
        top: title != null && App.platform.isIOS,
        left: false,
        right: false,
        bottom: false,
        child: !isPaginated
            ? _scrollView
            : DragToRefresh(
                initialRefresh: initialRefresh,
                enablePullDown: enablePullDown,
                enablePullUp: enablePullUp,
                onRefresh: onRefresh,
                onLoading: onLoading,
                child: _scrollView,
              ),
      );

  @override
  Widget build(BuildContext context) {
    return _scaffold
        ? AdaptiveScaffold(
            backgroundColor: scaffoldBackgroundColor,
            cupertino: (_, __) => CupertinoPageScaffoldData(
              resizeToAvoidBottomInsetTab: resizeToAvoidBottomInsetTab,
              resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            ),
            adaptiveToolbar: hasAppBar
                ? AdaptiveToolbar(
                    implyMiddle: implyMiddle,
                    title: App.platform.cupertino(title),
                    implyLeading: autoImplyLeading ?? true,
                    cupertinoImplyLeading: cupertinoAutoImplyLeading ?? App.platform.isIOS,
                    actions: actions,
                  )
                : null,
            body: AdaptiveScaffoldBody(body: _body),
          )
        : _body;
  }
}
