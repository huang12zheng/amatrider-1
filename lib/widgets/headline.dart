import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Headline extends StatelessWidget {
  final String title;
  final int? maxLines;
  final double? fontSize;
  final double minFontSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  // ignore: prefer_const_constructors_in_immutables
  Headline(
    this.title, {
    Key? key,
    this.maxLines,
    this.fontSize,
    this.minFontSize = 12,
    this.textAlign,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveText(
      title,
      softWrap: true,
      maxLines: maxLines,
      minFontSize: minFontSize,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize ?? 20.sp,
        fontWeight: fontWeight ?? FontWeight.w600,
        letterSpacing: Utils.letterSpacing,
        fontStyle: FontStyle.normal,
        color: Theme.of(context).platform.fold(
              material: () => Utils.foldTheme(
                context: context,
                light: () => Palette.text100,
                dark: () => Palette.headingDark,
              ),
              cupertino: () => CupertinoDynamicColor.resolve(
                const CupertinoDynamicColor.withBrightness(
                  color: Palette.text100,
                  darkColor: Palette.headingDark,
                ),
                context,
              ),
            ),
      ),
    );
  }
}
