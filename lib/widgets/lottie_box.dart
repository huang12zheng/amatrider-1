library lottie_box.dart;

import 'dart:typed_data';

import 'package:amatrider/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

enum _LottieType { asset, network, file, memory }

/// A stateful widget to render LottieBox.
class LottieBox extends StatefulWidget {
  final _LottieType _type;

  final String? lottie;
  final Duration duration;
  final BoxFit fit;
  final double? width;
  final double? height;
  final Uint8List? bytes;

  const LottieBox.asset({
    Key? key,
    required this.lottie,
    this.duration = const Duration(milliseconds: 600),
    this.fit = BoxFit.contain,
    this.width,
    this.height,
  })  : _type = _LottieType.asset,
        bytes = null,
        super(key: key);

  const LottieBox.file({
    Key? key,
    required this.lottie,
    this.duration = const Duration(milliseconds: 600),
    this.fit = BoxFit.contain,
    this.width,
    this.height,
  })  : _type = _LottieType.file,
        bytes = null,
        super(key: key);

  const LottieBox.network({
    Key? key,
    required this.lottie,
    this.duration = const Duration(milliseconds: 600),
    this.fit = BoxFit.contain,
    this.width,
    this.height,
  })  : _type = _LottieType.network,
        bytes = null,
        super(key: key);

  const LottieBox.memory({
    Key? key,
    required this.bytes,
    this.duration = const Duration(milliseconds: 600),
    this.fit = BoxFit.contain,
    this.width,
    this.height,
  })  : _type = _LottieType.memory,
        lottie = null,
        super(key: key);

  @override
  _LottieBoxState createState() => _LottieBoxState();
}

class _LottieBoxState extends State<LottieBox> with SingleTickerProviderStateMixin<LottieBox>, AutomaticKeepAliveClientMixin<LottieBox> {
  bool isInit = true;
  late AnimationController animation;

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }

  @override
  void initState() {
    animation = AnimationController(duration: widget.duration, vsync: this);

    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return widget._type.when(
      asset: widget.lottie?.let(
            (it) => Lottie.asset(
              it,
              controller: animation,
              fit: widget.fit,
              width: widget.width,
              height: widget.height,
              options: LottieOptions(enableMergePaths: true),
              onLoaded: (composition) => animation.repeat(),
            ),
          ) ??
          Utils.nothing,
      network: widget.lottie?.let(
            (it) => Lottie.network(
              it,
              controller: animation,
              fit: widget.fit,
              width: widget.width,
              height: widget.height,
              options: LottieOptions(enableMergePaths: true),
              onLoaded: (composition) => animation.repeat(),
            ),
          ) ??
          Utils.nothing,
      file: widget.lottie?.let(
            (it) => Lottie.file(
              it,
              controller: animation,
              fit: widget.fit,
              width: widget.width,
              height: widget.height,
              options: LottieOptions(enableMergePaths: true),
              onLoaded: (composition) => animation.repeat(),
            ),
          ) ??
          Utils.nothing,
      memory: widget.bytes?.let(
            (it) => Lottie.memory(
              it,
              controller: animation,
              fit: widget.fit,
              width: widget.width,
              height: widget.height,
              options: LottieOptions(enableMergePaths: true),
              onLoaded: (composition) => animation.repeat(),
            ),
          ) ??
          Utils.nothing,
    );
  }
}

extension on _LottieType {
  T when<T>({
    required T asset,
    required T network,
    required T file,
    required T memory,
  }) {
    switch (this) {
      case _LottieType.asset:
        return asset;
      case _LottieType.network:
        return network;
      case _LottieType.file:
        return file;
      case _LottieType.memory:
        return memory;
    }
  }
}
