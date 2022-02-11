library widget_shimmer.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

enum ShimmerDirectionFlow { ltr, rtl, ttb, btt }

/// A stateless widget to render WidgetShimmer.
class WidgetShimmer extends StatelessWidget {
  final double itemHeight, itemWidth;
  final BorderRadius borderRadius;
  final bool isEnabled;
  final Color? boxColor;
  final Color? shimmerBaseColor;
  final Color? shimmerHighlightColor;
  final ShimmerDirectionFlow shimmerDirection;
  final Widget? child;
  final WidgetBuilder? shimmerBuilder;
  final Duration duration;
  final bool loop;

  const WidgetShimmer({
    Key? key,
    double? lineWidth,
    required this.itemHeight,
    required this.itemWidth,
    this.isEnabled = true,
    this.boxColor,
    this.shimmerBaseColor,
    this.shimmerHighlightColor,
    this.shimmerDirection = ShimmerDirectionFlow.ltr,
    this.borderRadius = const BorderRadius.all(Radius.circular(0.0)),
    this.child,
    this.shimmerBuilder,
    this.duration = const Duration(milliseconds: 1500),
    this.loop = true,
  })  : assert((shimmerBuilder == null && child != null) || (shimmerBuilder != null && child == null)),
        super(key: key);

  Color get _boxColor => boxColor ?? Colors.grey.shade400;
  Color get _shimmerBaseColor => shimmerBaseColor ?? App.resolveColor(Colors.grey.shade300, dark: Colors.grey.shade600)!;
  Color get _shimmerHighlightColor => shimmerHighlightColor ?? App.resolveColor(Colors.grey.shade200, dark: Colors.grey.shade500)!;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: itemHeight,
      width: itemWidth,
      child: Stack(
        children: [
          Positioned.fill(child: shimmerBuilder?.call(context) ?? child!),
          //
          Positioned.fill(
            child: Shimmer.fromColors(
              baseColor: _shimmerBaseColor.withOpacity(0.9),
              highlightColor: _shimmerHighlightColor,
              enabled: isEnabled,
              direction: shimmerDirection.mapped,
              loop: loop ? 0 : 1,
              period: duration,
              child: ClipRRect(
                borderRadius: borderRadius,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: _boxColor, borderRadius: borderRadius),
                  child: SizedBox(height: itemHeight, width: itemWidth),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

extension on ShimmerDirectionFlow {
  ShimmerDirection get mapped {
    switch (this) {
      case ShimmerDirectionFlow.ltr:
        return ShimmerDirection.ltr;
      case ShimmerDirectionFlow.rtl:
        return ShimmerDirection.rtl;
      case ShimmerDirectionFlow.ttb:
        return ShimmerDirection.ttb;
      case ShimmerDirectionFlow.btt:
        return ShimmerDirection.btt;
    }
  }
}
