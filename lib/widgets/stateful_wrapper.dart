library stateful_wrapper.dart;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A stateful widget to render StatefulWrapper.
class StatefulWrapper extends StatefulWidget {
  /// {@macro flutter.widgets.State.initState}
  final VoidCallback? initState;

  /// {@macro flutter.widgets.State.initState}
  final VoidCallback? didChangeDependencies;

  /// {@macro flutter.widgets.State.initState}
  final VoidCallback? didUpdateWidget;

  /// {@macro flutter.widgets.State.initState}
  final VoidCallback? dispose;

  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget child;

  const StatefulWrapper({
    Key? key,
    this.initState,
    this.didChangeDependencies,
    this.didUpdateWidget,
    this.dispose,
    required this.child,
  }) : super(key: key);

  @override
  _StatefulWrapperState createState() => _StatefulWrapperState();
}

class _StatefulWrapperState extends State<StatefulWrapper> {
  @override
  void initState() {
    widget.initState?.call();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    widget.didChangeDependencies?.call();
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant StatefulWrapper oldWidget) {
    widget.didUpdateWidget?.call();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    widget.dispose?.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
