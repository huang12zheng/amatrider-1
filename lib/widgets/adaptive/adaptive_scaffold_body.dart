library adaptive_scaffold_body.dart;

import 'package:flutter/material.dart';

/// A stateless widget to render AdaptiveScaffoldBody.
class AdaptiveScaffoldBody extends StatelessWidget {
  final Widget? body;
  final WidgetBuilder? builder;
  final bool materialWrapper;

  const AdaptiveScaffoldBody({
    Key? key,
    this.body,
    this.builder,
    this.materialWrapper = false,
  })  : assert((body != null && builder == null) || (body == null && builder != null)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return materialWrapper
        ? Material(type: MaterialType.transparency, elevation: 0.0, child: builder?.call(context) ?? body!)
        : builder?.call(context) ?? body!;
  }
}
