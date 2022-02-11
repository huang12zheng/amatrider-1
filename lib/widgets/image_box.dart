library image_box.dart;

import 'dart:io';

import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum _ImageType { asset, network, file }

/// A stateless widget to render ImageBox.
class ImageBox extends StatefulWidget {
  final _ImageType _type;

  final Object? heroTag;
  final bool applyConstraintToReplacement;
  final BoxBorder? border;
  final BorderRadius? borderRadius;
  final bool canZoom;
  final double elevation;
  final BoxFit fit;
  final double height;
  final String? photo;
  final Widget replacement;
  final String? replacementAsset;
  final bool useDefaultRadius;
  final double width;
  final bool expandsFullscreen;
  final void Function()? onPressed;

  const ImageBox.asset({
    Key? key,
    this.heroTag,
    this.width = double.infinity,
    this.height = double.infinity,
    this.fit = BoxFit.cover,
    required this.photo,
    this.elevation = 0.0,
    this.border,
    this.borderRadius,
    this.replacement = Utils.nothing,
    this.applyConstraintToReplacement = true,
    this.useDefaultRadius = true,
    this.expandsFullscreen = false,
    this.canZoom = false,
    this.onPressed,
  })  : _type = _ImageType.asset,
        replacementAsset = null,
        super(key: key);

  const ImageBox.file({
    Key? key,
    this.heroTag,
    this.width = double.infinity,
    this.height = double.infinity,
    this.fit = BoxFit.cover,
    required this.photo,
    this.elevation = 0.0,
    this.border,
    this.borderRadius,
    this.replacement = Utils.nothing,
    this.replacementAsset,
    this.applyConstraintToReplacement = true,
    this.useDefaultRadius = true,
    this.expandsFullscreen = false,
    this.canZoom = false,
    this.onPressed,
  })  : _type = _ImageType.file,
        super(key: key);

  const ImageBox.network({
    Key? key,
    this.heroTag,
    this.width = double.infinity,
    this.height = double.infinity,
    this.fit = BoxFit.cover,
    required this.photo,
    this.elevation = 0.0,
    this.border,
    this.borderRadius,
    this.replacement = Utils.nothing,
    this.replacementAsset,
    this.applyConstraintToReplacement = true,
    this.useDefaultRadius = true,
    this.expandsFullscreen = false,
    this.canZoom = false,
    this.onPressed,
  })  : _type = _ImageType.network,
        super(key: key);

  @override
  State<ImageBox> createState() => _ImageBoxState();
}

class _ImageBoxState extends State<ImageBox> with AutomaticKeepAliveClientMixin<ImageBox> {
  @override
  bool get wantKeepAlive => true;

  Widget get _image =>
      widget.photo?.let(
        (it) => widget._type.when(
          asset: _imageBuilder(AssetImage(it)),
          file: _imageBuilder(FileImage(File(it))),
          network: CachedNetworkImage(
            imageUrl: it,
            fit: widget.fit,
            width: widget.width,
            height: widget.height,
            imageBuilder: (context, provider) => _imageBuilder(provider),
            progressIndicatorBuilder: (_, url, download) => ConstrainedBox(
              constraints: constraints,
              child: Center(
                child: CircularProgressBar.adaptive(
                  value: download.progress,
                  strokeWidth: 2,
                  width: 25,
                  height: 25,
                ),
              ),
            ),
            errorWidget: (_, url, error) => replacement,
          ),
        ),
      ) ??
      replacement;

  BoxConstraints get constraints => BoxConstraints(minWidth: widget.width, minHeight: widget.height);

  Widget get replacement =>
      widget.replacementAsset?.let((it) => _imageBuilder(AssetImage(it))) ??
      (widget.applyConstraintToReplacement ? ConstrainedBox(constraints: constraints, child: widget.replacement) : widget.replacement);

  Object? get _heroTag => widget.heroTag ?? widget.photo?.hashCode.toString() ?? widget.photo;

  Widget _imageBuilder(ImageProvider provider) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: widget.borderRadius,
        border: widget.border,
      ),
      child: ClipRRect(
        borderRadius: widget.borderRadius ?? (widget.useDefaultRadius ? 8.br : null),
        child: MyHero(
          tag: _heroTag,
          borderRadius: widget.borderRadius,
          type: MaterialType.transparency,
          elevation: widget.elevation,
          child: AdaptiveInkWell(
            onTap: widget.expandsFullscreen
                ? () => navigator.pushWidget(AdaptiveFullscreen(
                      heroTag: '$_heroTag',
                      minScale: 0.1,
                      imageProvider: provider,
                    ))
                : widget.onPressed,
            child: Image(
              width: widget.width,
              height: widget.height,
              image: provider,
              fit: widget.fit,
              isAntiAlias: true,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return widget.canZoom ? InteractiveViewer(child: _image) : _image;
  }
}

extension on _ImageType {
  T when<T>({
    required T asset,
    required T network,
    required T file,
  }) {
    switch (this) {
      case _ImageType.asset:
        return asset;
      case _ImageType.network:
        return network;
      case _ImageType.file:
        return file;
    }
  }
}
