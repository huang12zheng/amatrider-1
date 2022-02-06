import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

class MarkerWidget {
  final void Function(Uint8List?) callback;
  final Widget widget;
  final double? width;
  final double? height;
  final double? pixelRatio;

  MarkerWidget({
    required this.widget,
    required this.callback,
    this.width,
    this.height,
    this.pixelRatio,
  });

  void generate(BuildContext context) {
    if (SchedulerBinding.instance?.schedulerPhase ==
        SchedulerPhase.persistentCallbacks) {
      SchedulerBinding.instance
          ?.addPostFrameCallback((_) => afterFirstLayout(context));
    } else {
      afterFirstLayout(context);
    }
  }

  void afterFirstLayout(BuildContext context) {
    addOverlay(context);
  }

  void addOverlay(BuildContext context) {
    var overlayState = Overlay.of(context);

    var entry = OverlayEntry(
        builder: (context) {
          return _MarkerHelper(
            widget: widget,
            callback: callback,
            height: height,
            width: width,
            ratio: pixelRatio,
          );
        },
        maintainState: true);

    overlayState?.insert(entry);
  }
}

/// Maps are embeding GoogleMap library for Andorid/iOS  into flutter.
///
/// These native libraries accept BitmapDescriptor for marker, which means that for custom markers
/// you need to draw view to bitmap and then send that to BitmapDescriptor.
///
/// Because of that Flutter also cannot accept Widget for marker, but you need draw it to bitmap and
/// that's what this widget does:
///
/// 1) It draws marker widget to tree
/// 2) After painted access the repaint boundary with global key and converts it to uInt8List
/// 3) Returns set of Uint8List (bitmaps) through callback
class _MarkerHelper extends StatefulWidget {
  final Widget widget;
  final void Function(Uint8List?)? callback;
  final double? width;
  final double? height;
  final double pixelRatio;

  const _MarkerHelper({
    Key? key,
    required this.widget,
    this.callback,
    this.width,
    this.height,
    double? ratio,
  })  : pixelRatio = ratio ?? 1.5,
        super(key: key);

  @override
  _MarkerHelperState createState() => _MarkerHelperState();
}

class _MarkerHelperState extends State<_MarkerHelper> with AfterLayoutMixin {
  late GlobalKey globalKey;

  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    final bytes = await _getBitmaps(context);
    widget.callback?.call(bytes);
  }

  @override
  Widget build(BuildContext context) {
    final markerKey = GlobalKey();
    globalKey = markerKey;

    return Transform.translate(
      offset: Offset(MediaQuery.of(context).size.width, 0),
      child: Material(
        type: MaterialType.transparency,
        child: Stack(
          children: [
            SizedBox(
              height: widget.height,
              width: widget.width,
              child: RepaintBoundary(
                key: markerKey,
                child: widget.widget,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<Uint8List?> _getBitmaps(BuildContext context) async {
    var futures = _getUint8List(globalKey);
    return futures;
  }

  Future<Uint8List?> _getUint8List(GlobalKey markerKey) async {
    var boundary =
        markerKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
    var image = await boundary?.toImage(pixelRatio: widget.pixelRatio);
    final byteData = await image?.toByteData(format: ui.ImageByteFormat.png);
    return byteData?.buffer.asUint8List();
  }
}

/// AfterLayoutMixin
mixin AfterLayoutMixin<T extends StatefulWidget> on State<T> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback(
      (_) async => await afterFirstLayout(context),
    );
  }

  Future<void> afterFirstLayout(BuildContext context);
}
