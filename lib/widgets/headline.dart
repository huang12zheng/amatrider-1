import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Headline extends StatelessWidget {
  final String title;
  final int? maxLines;
  final double? fontSize;
  final double minFontSize;
  final double maxFontSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final TextStyle? style;
  final Color? textColor;
  final Color? textColorLight;
  final Color? textColorDark;

  // ignore: prefer_const_constructors_in_immutables
  Headline(
    this.title, {
    Key? key,
    this.maxLines,
    this.fontSize,
    this.minFontSize = 12,
    this.maxFontSize = double.infinity,
    this.textAlign,
    this.fontWeight,
    this.style,
    this.textColor,
    this.textColorLight,
    this.textColorDark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveText(
      title,
      softWrap: true,
      maxLines: maxLines,
      minFontSize: minFontSize,
      maxFontSize: maxFontSize,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize ?? 20.sp,
        fontWeight: fontWeight ?? FontWeight.w600,
        letterSpacing: Utils.letterSpacing,
        fontStyle: FontStyle.normal,
        color: Theme.of(context).platform.fold(
              material: () => App.resolveColor(
                textColor ?? textColorLight ?? Palette.text100,
                dark: textColor ?? textColorDark ?? Palette.headingDark,
              ),
              cupertino: () => CupertinoDynamicColor.resolve(
                CupertinoDynamicColor.withBrightness(
                  color: textColor ?? textColorLight ?? Palette.text100,
                  darkColor: textColor ?? textColorDark ?? Palette.headingDark,
                ),
                context,
              ),
            ),
      ).merge(style),
    );
  }
}
