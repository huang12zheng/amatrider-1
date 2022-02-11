library shimmer_skeleton.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render ShimmerSkeleton.
class ShimmerSkeleton extends StatelessWidget {
  final double? width, height;
  final EdgeInsets padding;
  final BorderRadius radius;
  final Color? color;
  final Widget? child;

  const ShimmerSkeleton({
    Key? key,
    this.width,
    this.height,
    this.color,
    this.padding = const EdgeInsets.all(8.0),
    this.radius = const BorderRadius.all(Radius.circular(16)),
    this.child,
  }) : super(key: key);

  Color get _color => color ?? App.resolveColor(Colors.grey.shade400, dark: Colors.grey.shade700) ?? Colors.black.withOpacity(0.04);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: DecoratedBox(
        decoration: BoxDecoration(color: _color, borderRadius: radius),
        child: SizedBox(
          height: height,
          width: width,
          child: child,
        ),
      ),
    );
  }
}
