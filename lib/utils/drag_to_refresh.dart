library global_refresh_config.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/// A stateless widget to render DragToRefresh.
class DragToRefresh extends StatefulWidget {
  final Widget child;
  final bool initialRefresh;
  final bool enablePullDown;
  final bool enablePullUp;
  final void Function(RefreshController)? onLoading;
  final void Function(RefreshController)? onRefresh;

  const DragToRefresh({
    Key? key,
    required this.child,
    this.initialRefresh = false,
    this.enablePullDown = true,
    this.enablePullUp = false,
    this.onRefresh,
    this.onLoading,
  }) : super(key: key);

  @override
  State<DragToRefresh> createState() => DragToRefreshState();

  static DragToRefreshState of(BuildContext context, {bool build = true}) {
    return build
        ? context.dependOnInheritedWidgetOfExactType<RefreshState>()!.refresher
        : context.findAncestorWidgetOfExactType<RefreshState>()!.refresher;
  }
}

class DragToRefreshState extends State<DragToRefresh>
    with
        TickerProviderStateMixin<DragToRefresh>,
        AutomaticKeepAliveClientMixin<DragToRefresh> {
  late AnimationController _footerController;
  late RefreshController refreshController;
  late AnimationController _animationcontroller, _scaleController;

  @override
  void dispose() {
    refreshController.dispose();
    _scaleController.dispose();
    _footerController.dispose();
    _animationcontroller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    refreshController = RefreshController(
      initialRefresh: widget.initialRefresh,
    );

    _animationcontroller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));

    _scaleController =
        AnimationController(value: 0.0, vsync: this, upperBound: 1.0);

    _footerController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));

    refreshController.headerMode?.addListener(() {
      if (refreshController.headerStatus == RefreshStatus.idle) {
        _scaleController.value = 0.0;
        _animationcontroller.reset();
      } else if (refreshController.headerStatus == RefreshStatus.refreshing) {
        _animationcontroller.repeat();
      }
    });

    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  void updateController(RefreshController controller) =>
      setState(() => refreshController = controller);

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return RefreshState(
      refresher: this,
      controller: refreshController,
      child: SmartRefresher(
        controller: refreshController,
        enablePullDown: widget.enablePullDown,
        enablePullUp: widget.enablePullUp,
        onRefresh: () => widget.onRefresh?.call(refreshController),
        onLoading: () => widget.onLoading?.call(refreshController),
        header: CustomHeader(
          refreshStyle: RefreshStyle.Follow,
          onOffsetChange: (offset) {
            if (refreshController.headerMode?.value != RefreshStatus.refreshing)
              _scaleController.value = offset / 80.0;
          },
          builder: (c, m) => Center(
            child: FadeTransition(
              opacity: _scaleController,
              child: ScaleTransition(
                scale: _scaleController,
                child: SpinKitSpinningLines(
                  size: 34.0,
                  controller: _animationcontroller,
                  color: Palette.accentColor,
                ),
              ),
            ),
          ),
        ),
        footer: CustomFooter(
          onModeChange: (mode) {
            if (mode == LoadStatus.loading) {
              _scaleController.value = 0.0;
              _footerController.repeat();
            } else {
              _footerController.reset();
            }
          },
          builder: (context, mode) {
            Widget child;
            switch (mode) {
              case LoadStatus.failed:
                child = const Text('Failed! Try again.');
                break;
              case LoadStatus.noMore:
                child = const Text('End of list');
                break;
              default:
                child = SpinKitSpinningLines(
                  size: 34.0,
                  controller: _footerController,
                  color: Palette.accentColor,
                );
                break;
            }
            return SizedBox(
              height: 50,
              child: Center(
                child: child,
              ),
            );
          },
        ),
        child: widget.child,
      ),
    );
  }
}

class RefreshState extends InheritedWidget {
  final RefreshController controller;
  final DragToRefreshState refresher;

  const RefreshState({
    Key? key,
    required Widget child,
    required this.controller,
    required this.refresher,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(RefreshState oldWidget) =>
      controller != oldWidget.controller;

  static RefreshState? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<RefreshState>();
  }
}
