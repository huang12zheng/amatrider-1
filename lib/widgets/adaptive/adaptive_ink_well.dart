library adaptive_inkwell.dart;

import 'package:auto_route/auto_route.dart';
import 'package:enough_platform_widgets/enough_platform_widgets.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render AdaptiveInkWell.
class AdaptiveInkWell extends StatelessWidget with AutoRouteWrapper {
  final Widget child;
  final bool autofocus;
  final BorderRadius? borderRadius;
  final bool canRequestFocus;
  final bool containedInkWell;
  final ShapeBorder? customBorder;
  final bool enableFeedback;
  final bool excludeFromSemantics;
  final Color? focusColor;
  final FocusNode? focusNode;
  final Color? highlightColor;
  final BoxShape highlightShape;
  final Color? hoverColor;
  final MouseCursor? mouseCursor;
  final VoidCallback? onDoubleTap;
  final void Function(bool)? onFocusChange;
  final void Function(bool)? onHighlightChanged;
  final void Function(bool)? onHover;
  final VoidCallback? onLongPress;
  final VoidCallback? onTap;
  final VoidCallback? onTapCancel;
  final void Function(TapDownDetails)? onTapDown;
  final MaterialStateProperty<Color?>? overlayColor;
  final double? radius;
  final Color? splashColor;
  final InteractiveInkFeatureFactory? splashFactory;

  const AdaptiveInkWell({
    Key? key,
    required this.child,
    this.autofocus = false,
    this.borderRadius,
    this.canRequestFocus = true,
    this.containedInkWell = false,
    this.customBorder,
    this.enableFeedback = true,
    this.excludeFromSemantics = false,
    this.focusColor,
    this.focusNode,
    this.highlightColor,
    this.highlightShape = BoxShape.circle,
    this.hoverColor,
    this.mouseCursor,
    this.onDoubleTap,
    this.onFocusChange,
    this.onHighlightChanged,
    this.onHover,
    this.onLongPress,
    this.onTap,
    this.onTapCancel,
    this.onTapDown,
    this.overlayColor,
    this.radius,
    this.splashColor,
    this.splashFactory,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return PlatformInkWell(
      autofocus: autofocus,
      borderRadius: borderRadius,
      canRequestFocus: canRequestFocus,
      containedInkWell: containedInkWell,
      customBorder: customBorder,
      enableFeedback: enableFeedback,
      excludeFromSemantics: excludeFromSemantics,
      focusColor: focusColor,
      focusNode: focusNode,
      highlightColor: highlightColor,
      highlightShape: highlightShape,
      hoverColor: hoverColor,
      mouseCursor: mouseCursor,
      onDoubleTap: onDoubleTap,
      onFocusChange: onFocusChange,
      onHighlightChanged: onHighlightChanged,
      onHover: onHover,
      onLongPress: onLongPress,
      onTap: onTap,
      onTapCancel: onTapCancel,
      onTapDown: onTapDown,
      overlayColor: overlayColor,
      radius: radius,
      splashColor: splashColor,
      splashFactory: splashFactory,
      child: child,
    );
  }
}
