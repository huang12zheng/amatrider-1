library image_box.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render ImageBox.
class ImageBox extends StatefulWidget {
  final double width;
  final double height;
  final BoxFit fit;
  final String? photo;
  final Widget replacement;

  const ImageBox({
    Key? key,
    this.width = double.infinity,
    this.height = double.infinity,
    this.fit = BoxFit.cover,
    required this.photo,
    this.replacement = const SizedBox.shrink(),
  }) : super(key: key);

  @override
  State<ImageBox> createState() => _ImageBoxState();
}

class _ImageBoxState extends State<ImageBox>
    with AutomaticKeepAliveClientMixin<ImageBox> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return widget.photo?.let(
          (it) => CachedNetworkImage(
            imageUrl: it,
            fit: widget.fit,
            width: widget.width,
            height: widget.height,
            progressIndicatorBuilder: (_, url, download) => Center(
              child: CircularProgressBar.adaptive(
                value: download.progress,
                strokeWidth: 2,
                width: 25,
                height: 25,
              ),
            ),
            errorWidget: (_, url, error) => widget.replacement,
          ),
        ) ??
        widget.replacement;
  }
}
