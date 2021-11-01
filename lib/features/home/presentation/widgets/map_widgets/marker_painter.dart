import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:amatrider/utils/utils.dart';
import 'package:flutter/material.dart';

class MarkerPainter {
  final String? leading, title, subtitle;
  final ui.Image? image;
  final IconData? icon;
  final Color? iconColor;

  MarkerPainter({
    required this.title,
    this.leading,
    this.subtitle,
    this.image,
    this.icon,
    this.iconColor,
  }) : assert(
            (image != null && icon == null && leading == null) ||
                (image == null && icon != null && leading == null) ||
                (image == null && icon == null && leading != null) ||
                (image == null && icon == null && leading == null),
            'You can only set one of image, leading or icon');
}

class WindowPainter extends CustomPainter {
  final MarkerPainter info;

  WindowPainter(this.info);

  static Completer<ui.Image> _imageDecoder(ImageProvider provider) {
    var completer = Completer<ui.Image>();

    provider.resolve(const ImageConfiguration()).addListener(
        ImageStreamListener((info, _) => completer.complete(info.image)));

    return completer;
  }

  static Future<Uint8List?> render(
    MarkerPainter info, {
    Completer<ui.Image>? completer,
    ImageProvider? imageProvider,
  }) async {
    var recorder = ui.PictureRecorder();
    var canvas = ui.Canvas(recorder);

    final size = const ui.Size(400, 110);
    final _image = imageProvider != null
        ? await (_imageDecoder(imageProvider)).future
        : await completer?.future;
    var customMarker = WindowPainter(MarkerPainter(
      title: info.title,
      subtitle: info.subtitle,
      icon: info.icon,
      iconColor: info.iconColor,
      leading: info.leading,
      image: _image ?? info.image,
    ));
    customMarker.paint(canvas, size);

    var picture = recorder.endRecording();
    final image = await picture.toImage(
      size.width.toInt(),
      size.height.toInt(),
    );

    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    return byteData?.buffer.asUint8List();
  }

  void _buildMiniRect(Canvas canvas, Paint paint, double size) {
    paint.color = Palette.accent20;
    final rect = Rect.fromLTWH(0, 0, size, size);
    canvas.drawRect(rect, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.white;

    final height = size.height - 15;

    final rrect = RRect.fromLTRBR(
      0,
      0,
      size.width,
      height,
      const Radius.circular(Utils.inputBorderRadius),
    );

    canvas.drawRRect(rrect, paint);

    final rect = Rect.fromLTWH(size.width / 2 - 2.5, height, 5, 15);

    canvas.drawRect(rect, paint);

    if (info.image != null)
      _buildImage(canvas: canvas, size: ui.Size(height, height), paint: paint);
    else
      _buildMiniRect(canvas, paint, height);

    if (info.icon != null)
      _buildIconData(
        canvas: canvas,
        icon: info.icon!,
        width: height,
        fontSize: 60,
        textAlign: TextAlign.center,
        offset: Offset(0, height / 2),
        color: info.iconColor ?? Colors.white,
        fontFamily: info.icon?.fontFamily,
      );

    if (info.leading != null) {
      _buildText(
        canvas: canvas,
        text: '${info.leading}',
        width: height,
        fontSize: 26,
        textAlign: TextAlign.center,
        offset: Offset(0, height / 2),
        color: Palette.accentColor,
      );
    }

    if ((info.title == null && info.subtitle != null) ||
        (info.title != null && info.subtitle == null)) {
      _buildText(
        canvas: canvas,
        text: '${info.title ?? info.subtitle}',
        width: size.width - height - 20,
        offset: Offset(height + 10, height * 0.5),
        fontSize: 30,
      );
    }

    if (info.title != null && info.subtitle != null) {
      _buildTitle(
        canvas: canvas,
        text: '${info.title}',
        width: size.width - height - 20,
        offset: Offset(height + 10, height * 0.5),
        fontSize: 25,
      );

      _buildSubtitle(
        canvas: canvas,
        text: '${info.subtitle}',
        width: size.width - height - 20,
        offset: Offset(height + 10, height * 0.7),
        fontSize: 30,
      );
    }
  }

  void _buildText({
    required Canvas canvas,
    required String text,
    required double width,
    required Offset offset,
    int? maxLines = 2,
    Color color = Colors.black,
    double fontSize = 18,
    String? fontFamily,
    TextAlign textAlign = TextAlign.left,
  }) {
    final builder = ui.ParagraphBuilder(
      ui.ParagraphStyle(
        maxLines: maxLines,
        textAlign: textAlign,
      ),
    )
      ..pushStyle(
        ui.TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w600,
        ),
      )
      ..addText(text);

    final paragraph = builder.build()
      ..layout(ui.ParagraphConstraints(width: width));

    canvas.drawParagraph(
      paragraph,
      Offset(offset.dx, offset.dy - paragraph.height * 0.5),
    );
  }

  void _buildIconData({
    required Canvas canvas,
    required IconData icon,
    required double width,
    required Offset offset,
    Color color = Colors.black,
    double fontSize = 18,
    String? fontFamily,
    TextAlign textAlign = TextAlign.left,
  }) {
    final builder = ui.ParagraphBuilder(
      ui.ParagraphStyle(
        maxLines: 1,
        textAlign: textAlign,
      ),
    )
      ..pushStyle(
        ui.TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
        ),
      )
      ..addText(String.fromCharCode(icon.codePoint));

    final paragraph = builder.build()
      ..layout(ui.ParagraphConstraints(width: width));

    canvas.drawParagraph(
      paragraph,
      Offset(offset.dx, offset.dy - paragraph.height / 2),
    );
  }

  void _buildTitle({
    required Canvas canvas,
    required String text,
    required double width,
    required Offset offset,
    Color color = Colors.black,
    double fontSize = 25,
    String? fontFamily,
    TextAlign textAlign = TextAlign.left,
  }) {
    final builder = ui.ParagraphBuilder(
      ui.ParagraphStyle(
        maxLines: 1,
        textAlign: textAlign,
      ),
    )
      ..pushStyle(
        ui.TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
        ),
      )
      ..addText(text);

    final paragraph = builder.build()
      ..layout(ui.ParagraphConstraints(width: width));

    canvas.drawParagraph(
      paragraph,
      Offset(offset.dx, offset.dy - paragraph.height),
    );
  }

  void _buildSubtitle({
    required Canvas canvas,
    required String text,
    required double width,
    required Offset offset,
    Color color = Colors.black,
    double fontSize = 25,
    String? fontFamily,
    TextAlign textAlign = TextAlign.left,
  }) {
    final builder = ui.ParagraphBuilder(
      ui.ParagraphStyle(
        maxLines: 1,
        textAlign: textAlign,
        ellipsis: '...',
      ),
    )
      ..pushStyle(
        ui.TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
        ),
      )
      ..addText(text);

    final paragraph = builder.build()
      ..layout(ui.ParagraphConstraints(width: width));

    canvas.drawParagraph(
      paragraph,
      Offset(offset.dx, offset.dy - paragraph.height * 0.6),
    );
  }

  void _buildImage({
    required Canvas canvas,
    required Size size,
    required Paint paint,
  }) {
    final image = info.image;

    if (image != null)
      canvas.drawImageRect(
        image,
        Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()),
        Rect.fromLTWH(0, 0, size.width, size.height),
        paint,
      );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
