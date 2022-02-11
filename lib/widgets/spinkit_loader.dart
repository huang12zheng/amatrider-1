library spinkit_loader.dart;

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpinKitLoader extends StatefulWidget {
  final Color? color;
  final Duration duration;
  final double size;
  final IndexedWidgetBuilder? builder;
  final AnimationController Function()? controller;
  final bool shouldDispose;

  const SpinKitLoader({
    Key? key,
    this.size = 34.0,
    this.color,
    this.duration = const Duration(milliseconds: 700),
    this.builder,
    this.controller,
    this.shouldDispose = true,
  }) : super(key: key);

  @override
  _SpinKitLoaderState createState() => _SpinKitLoaderState();
}

class _SpinKitLoaderState extends State<SpinKitLoader> with TickerProviderStateMixin, AutomaticKeepAliveClientMixin<SpinKitLoader> {
  late AnimationController _controller;
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      _controller = widget.controller!.call();
    } else {
      _controller = AnimationController(
        vsync: this,
        duration: widget.duration,
      );
    }
  }

  @override
  void dispose() {
    if (widget.shouldDispose) _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return SpinKitFadingCircle(
      color: widget.color ?? (widget.builder == null ? Theme.of(context).colorScheme.primary : null),
      size: widget.size,
      controller: _controller,
      itemBuilder: widget.builder,
    );
  }
}
