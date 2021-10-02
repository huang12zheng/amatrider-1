import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class KeepAliveWidget extends StatefulWidget {
  final Widget unstable;
  const KeepAliveWidget({
    Key? key,
    required this.unstable,
  }) : super(key: key);

  @override
  State<KeepAliveWidget> createState() => _KeepAliveWidgetState();
}

class _KeepAliveWidgetState extends State<KeepAliveWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.unstable;
  }
}
