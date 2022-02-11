library adaptive_fullscreen.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

/// A stateless widget to render AdaptiveFullscreen.
class AdaptiveFullscreen extends StatefulWidget {
  final ImageProvider imageProvider;
  final BoxDecoration? backgroundDecoration;
  final double? minScale;
  final double? maxScale;
  final double? initialScale;
  final Object? heroTag;
  final bool containMinScale;
  final bool backgroundIsTransparent;

  const AdaptiveFullscreen({
    Key? key,
    required this.imageProvider,
    required this.heroTag,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
    this.initialScale,
    this.containMinScale = true,
    this.backgroundIsTransparent = true,
  }) : super(key: key);

  @override
  State<AdaptiveFullscreen> createState() => _AdaptiveFullscreenState();
}

class _AdaptiveFullscreenState extends State<AdaptiveFullscreen> {
  dynamic get initialScale => widget.initialScale ?? PhotoViewComputedScale.contained;
  dynamic get minScale => widget.containMinScale || widget.minScale == null ? PhotoViewComputedScale.contained : widget.minScale;
  dynamic get maxScale => widget.maxScale ?? PhotoViewComputedScale.covered * 2.0;

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      backgroundColor: Colors.transparent,
      body: AdaptiveScaffoldBody(
        body: Stack(
          children: [
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
                child: PhotoView(
                  imageProvider: widget.imageProvider,
                  backgroundDecoration: BoxDecoration(color: App.resolveColor(Colors.transparent, dark: Colors.black87.withOpacity(0.9))),
                  initialScale: initialScale,
                  minScale: minScale,
                  maxScale: maxScale,
                  heroAttributes: widget.heroTag != null
                      ? PhotoViewHeroAttributes(
                          tag: widget.heroTag!,
                          transitionOnUserGestures: true,
                        )
                      : null,
                  gaplessPlayback: true,
                  loadingBuilder: (_, chunk) => CircularProgressBar.adaptive(
                    height: 30,
                    width: 30,
                    strokeWidth: 1.5,
                    value: chunk != null ? (chunk.cumulativeBytesLoaded / chunk.expectedTotalBytes!.toDouble()) : 0,
                  ),
                ),
              ),
            ),
            //
            Positioned(
              top: 10,
              left: 10,
              child: SafeArea(
                child: AppIconButton(
                  tooltip: 'Back',
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  type: MaterialType.button,
                  padding: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(Utils.buttonRadius),
                  onPressed: navigator.pop,
                  child: Icon(
                    Icons.keyboard_backspace_rounded,
                    color: App.resolveColor(Colors.black87, dark: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
