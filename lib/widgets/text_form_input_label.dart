import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:amatrider/utils/utils.dart';

class TextFormInputLabel extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final TextDecoration? decoration;
  final Color? textColor;
  final Color? textColorDark;
  final int? maxLines;
  final TextAlign? textAlign;
  final VoidCallback? onPressed;
  final bool useDefaultText;

  const TextFormInputLabel({
    Key? key,
    required this.text,
    this.style,
    this.fontSize,
    this.fontWeight,
    this.letterSpacing,
    this.decoration,
    this.textColor,
    this.textColorDark,
    this.maxLines,
    this.textAlign,
    this.onPressed,
    this.useDefaultText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: GestureDetector(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: WidgetVisibility(
            visible: !useDefaultText,
            replacement: Text(
              text,
              style: TextStyle(
                color: App.resolveColor(textColor, dark: textColorDark),
                decoration: decoration,
                fontSize: fontSize ?? 15.5.sp,
                fontWeight: fontWeight ?? FontWeight.w500,
                letterSpacing: letterSpacing ?? Utils.labelLetterSpacing,
              ).merge(style),
              maxLines: maxLines,
              textAlign: textAlign,
            ),
            child: AdaptiveText(
              text,
              textColor: textColor,
              textColorDark: textColorDark,
              decoration: decoration,
              fontSize: fontSize ?? 15.5.sp,
              fontWeight: fontWeight ?? FontWeight.w500,
              letterSpacing: letterSpacing ?? Utils.labelLetterSpacing,
              style: style,
              maxLines: maxLines,
              textAlign: textAlign,
            ),
          ),
        ),
      ),
    );
  }
}
