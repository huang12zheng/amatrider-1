import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render FlatChip.
class FlatChip extends StatelessWidget {
  final Widget? leading;
  final bool useMaterial;
  final double minSpaceBeforeLeading;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int maxLines;
  final double minFontSize;
  final Widget? trailing;
  final double minSpaceBeforeTrailing;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final Color? textColor;
  final double radius;
  final double? letterSpacing;
  final VoidCallback? onPressed;

  const FlatChip(
    this.text, {
    Key? key,
    this.leading,
    this.trailing,
    this.padding,
    this.fontSize,
    this.fontWeight,
    this.maxLines = 1,
    this.minFontSize = 13,
    this.backgroundColor,
    this.textColor,
    this.minSpaceBeforeLeading = 5,
    this.minSpaceBeforeTrailing = 5,
    this.radius = 5,
    this.letterSpacing,
    this.useMaterial = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: useMaterial
          ? Material(
              type: MaterialType.transparency,
              borderRadius: BorderRadius.all(Radius.circular(radius)),
              elevation: 0.0,
              child: _child,
            )
          : _child,
    );
  }

  Widget get _child => InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.01.sw, vertical: 0.004.sh)
              .merge(padding),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(child: leading?.let((it) => it) ?? Utils.nothing),
              //
              HorizontalSpace(width: minSpaceBeforeLeading),
              //
              Flexible(
                flex: 6,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: AdaptiveText(
                        '$text',
                        maxLines: maxLines,
                        minFontSize: minFontSize,
                        softWrap: true,
                        fontWeight: fontWeight,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        textColor: textColor,
                        fontSize: fontSize ?? 15.sp,
                        letterSpacing: letterSpacing,
                      ),
                    ),
                  ],
                ),
              ),
              //
              HorizontalSpace(width: minSpaceBeforeTrailing),
              //
              Flexible(child: trailing?.let((it) => it) ?? Utils.nothing),
            ],
          ),
        ),
      );
}
