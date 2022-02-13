import 'package:amatrider/manager/theme/theme.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum _AutoSizeTextType { standard, rich }

/// A stateless widget to render AdaptiveText.
class AdaptiveText extends StatelessWidget {
  @override
  final Key? key;

  final _AutoSizeTextType _type;

  final String data;
  final TextDecoration? decoration;
  final double? fontSize;
  final FontWeight? fontWeight;
  final AutoSizeGroup? group;
  final double? height;
  final bool? isDefault;
  final double? letterSpacing;
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
  //
  final Color textColor;

  final Color textColorDark;
  final TextDirection? textDirection;
  final Key? textKey;
  final double? textScaleFactor;
  final TextSpan textSpan;
  final double? wordSpacing;
  final bool wrapWords;

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
    bool? isDefault,
    Color? textColor,
    Color? textColorDark,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.letterSpacing,
    this.wordSpacing,
    this.decoration,
  })  : _type = _AutoSizeTextType.standard,
        textSpan = const TextSpan(),
        textColor = textColor ?? Palette.text100,
        textColorDark = textColorDark ?? (textColor != Palette.text100 ? textColor : null) ?? Palette.text100Dark,
        isDefault = isDefault ?? false,
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
    bool? isDefault,
    Color? textColor,
    Color? textColorDark,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.letterSpacing,
    this.wordSpacing,
    this.decoration,
  })  : _type = _AutoSizeTextType.rich,
        data = '',
        textColor = textColor ?? Palette.text100,
        textColorDark = textColorDark ?? (textColor != Palette.text100 ? textColor : null) ?? Palette.text100Dark,
        isDefault = isDefault ?? false,
        super(key: key);

  TextStyle? _style(BuildContext ctx) => Utils.platform_(
        material: TextStyle(
          color: App.resolveColor(textColor, dark: textColorDark),
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: height,
          letterSpacing: letterSpacing,
          decoration: decoration,
          wordSpacing: wordSpacing,
        ),
        cupertino: AppTheme.cupertinoTextStyle(ctx)?.merge(
          TextStyle(
            color: App.resolveColor(textColor, dark: textColorDark),
            fontSize: fontSize,
            fontWeight: fontWeight,
            height: height,
            letterSpacing: letterSpacing,
            decoration: decoration,
            wordSpacing: wordSpacing,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return _type.when(
      standard: isDefault != null && isDefault!
          ? Text(
              data,
              key: key,
              locale: locale,
              maxLines: maxLines,
              overflow: overflow,
              semanticsLabel: semanticsLabel,
              softWrap: softWrap,
              strutStyle: strutStyle,
              textAlign: textAlign,
              textDirection: textDirection,
              textScaleFactor: textScaleFactor,
              style: _style(context)?.merge(style),
            )
          : AutoSizeText(
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
              style: _style(context)?.merge(style),
              textAlign: textAlign,
              textDirection: textDirection,
              textKey: textKey,
              textScaleFactor: textScaleFactor,
              wrapWords: wrapWords,
            ),
      rich: isDefault != null && isDefault!
          ? Text.rich(
              textSpan,
              key: key,
              locale: locale,
              maxLines: maxLines,
              overflow: overflow,
              semanticsLabel: semanticsLabel,
              softWrap: softWrap,
              strutStyle: strutStyle,
              textAlign: textAlign,
              textDirection: textDirection,
              textScaleFactor: textScaleFactor,
              style: _style(context)?.merge(style),
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
              style: _style(context)?.merge(style),
              textAlign: textAlign,
              textDirection: textDirection,
              textKey: textKey,
              textScaleFactor: textScaleFactor,
              wrapWords: wrapWords,
            ),
    );
  }
}

extension on _AutoSizeTextType {
  T when<T>({
    required T standard,
    required T rich,
  }) {
    switch (this) {
      case _AutoSizeTextType.rich:
        return rich;
      case _AutoSizeTextType.standard:
      default:
        return standard;
    }
  }
}
