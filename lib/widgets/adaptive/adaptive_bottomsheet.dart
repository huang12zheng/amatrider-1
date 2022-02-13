library adaptive_bottomsheet.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render AdaptiveBottomSheet.
class AdaptiveBottomSheet extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;

  const AdaptiveBottomSheet({
    Key? key,
    required this.child,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.antiAlias,
      controller: ScrollController(),
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      padding: MediaQuery.of(context).viewInsets,
      child: DecoratedBox(
        decoration: BoxDecoration(color: App.resolveColor(null, dark: Palette.secondaryColor)),
        child: child,
      ),
    );
  }
}
