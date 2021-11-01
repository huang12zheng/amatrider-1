import 'dart:async';

import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render CountdownWidget.
class CountdownWidget extends StatefulWidget {
  final Widget Function(Function) child;
  final Duration duration;
  final Future<void>? Function()? onTap;
  final VoidCallback? onPressed;

  const CountdownWidget({
    Key? key,
    this.duration = const Duration(minutes: 2),
    required this.child,
    this.onTap,
    this.onPressed,
  }) : super(key: key);

  @override
  State<CountdownWidget> createState() => _CountdownWidgetState();
}

class _CountdownWidgetState extends State<CountdownWidget>
    with AutomaticKeepAliveClientMixin<CountdownWidget> {
  static const oneSec = Duration(seconds: 1);

  late Duration duration;
  Timer? timer;

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // init duration
    duration = widget.duration;
  }

  @override
  bool get wantKeepAlive => true;

  String get tick => '${duration.inMinutes} : '
      '${((duration.inSeconds) % 60).toString().padLeft(2, '0')}';

  void startCountdown() {
    // Reset Duration
    duration = widget.duration;
    // Cancel timer if already started
    timer?.cancel();
    // Start timer
    timer = Timer.periodic(oneSec, (timer) {
      if (mounted)
        setState(() {
          if (duration.inSeconds > 0) {
            duration = duration - oneSec;
          } else {
            timer.cancel();
          }
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Visibility(
      visible: duration.inSeconds == 0 || duration == widget.duration,
      replacement: AdaptiveText(tick, fontSize: 15.0),
      child: GestureDetector(
        onTap: () async {
          await widget.onTap?.call();
          widget.onPressed?.call();
          // start countdown
          startCountdown();
        },
        child: widget.child.call(startCountdown),
      ),
    );
  }
}
