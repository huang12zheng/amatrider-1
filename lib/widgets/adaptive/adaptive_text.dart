import 'package:amatrider/manager/theme/theme.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

enum _AutoSizeTextType { standard, rich }

/// A stateless widget to render AdaptiveText.
class AdaptiveText extends StatelessWidget {
  @override
  final Key? key;

  final String data;
  final TextSpan textSpan;
  final AutoSizeGroup? group;
  final Locale? locale;
  final double maxFontSize;
  final int? maxLines;
  final double minFontSize;
  final TextOverflow? overflow;
  final Widget? overflowReplacement;
  final List<double>? presetFontSizes;
  final String? semanticsLabel;
  final bool? softWrap;
  final double stepGranularity;
  final StrutStyle? strutStyle;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Key? textKey;
  final double? textScaleFactor;
  final bool wrapWords;
  //
  final Color? textColor;
  final Color? textColorDark;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final double? letterSpacing;
  final TextDecoration? decoration;
  final _AutoSizeTextType _type;

  const AdaptiveText(
    this.data, {
    this.key,
    this.group,
    this.locale,
    this.maxFontSize = double.infinity,
    this.maxLines,
    this.minFontSize = 12,
    this.overflow,
    this.overflowReplacement,
    this.presetFontSizes,
    this.semanticsLabel,
    this.softWrap,
    this.stepGranularity = 1,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.textKey,
    this.textScaleFactor,
    this.wrapWords = true,
    this.textColor,
    this.textColorDark,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.letterSpacing,
    this.decoration,
  })  : _type = _AutoSizeTextType.standard,
        textSpan = const TextSpan(),
        super(key: key);

  const AdaptiveText.rich(
    this.textSpan, {
    this.key,
    this.group,
    this.locale,
    this.maxFontSize = double.infinity,
    this.maxLines,
    this.minFontSize = 12,
    this.overflow,
    this.overflowReplacement,
    this.presetFontSizes,
    this.semanticsLabel,
    this.softWrap,
    this.stepGranularity = 1,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.textKey,
    this.textScaleFactor,
    this.wrapWords = true,
    this.textColor,
    this.textColorDark,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.letterSpacing,
    this.decoration,
  })  : _type = _AutoSizeTextType.rich,
        data = '',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _type == _AutoSizeTextType.standard
        ? AutoSizeText(
            data,
            key: key,
            group: group,
            locale: locale,
            maxFontSize: maxFontSize,
            maxLines: maxLines,
            minFontSize: minFontSize,
            overflow: overflow,
            overflowReplacement: overflowReplacement,
            presetFontSizes: presetFontSizes,
            semanticsLabel: semanticsLabel,
            softWrap: softWrap,
            stepGranularity: stepGranularity,
            strutStyle: strutStyle,
            style: Theme.of(context).platform.fold(
                  material: () => TextStyle(
                    color: App.resolveColor(textColor, dark: textColorDark),
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    height: height,
                    letterSpacing: letterSpacing,
                    decoration: decoration,
                  ).merge(style),
                  cupertino: () => AppTheme.cupertinoTextStyle(context)?.merge(
                    TextStyle(
                      color: App.resolveColor(textColor, dark: textColorDark),
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                      height: height,
                      letterSpacing: letterSpacing,
                      decoration: decoration,
                    ).merge(style),
                  ),
                ),
            textAlign: textAlign,
            textDirection: textDirection,
            textKey: textKey,
            textScaleFactor: textScaleFactor,
            wrapWords: wrapWords,
          )
        : AutoSizeText.rich(
            textSpan,
            key: key,
            group: group,
            locale: locale,
            maxFontSize: maxFontSize,
            maxLines: maxLines,
            minFontSize: minFontSize,
            overflow: overflow,
            overflowReplacement: overflowReplacement,
            presetFontSizes: presetFontSizes,
            semanticsLabel: semanticsLabel,
            softWrap: softWrap,
            stepGranularity: stepGranularity,
            strutStyle: strutStyle,
            style: Theme.of(context).platform.fold(
                  material: () => TextStyle(
                    color: App.resolveColor(textColor, dark: textColorDark),
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    height: height,
                    letterSpacing: letterSpacing,
                    decoration: decoration,
                  ).merge(style),
                  cupertino: () => AppTheme.cupertinoTextStyle(context)?.merge(
                    TextStyle(
                      color: App.resolveColor(textColor, dark: textColorDark),
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                      height: height,
                      letterSpacing: letterSpacing,
                      decoration: decoration,
                    ).merge(style),
                  ),
                ),
            textAlign: textAlign,
            textDirection: textDirection,
            textKey: textKey,
            textScaleFactor: textScaleFactor,
            wrapWords: wrapWords,
          );
  }
}
