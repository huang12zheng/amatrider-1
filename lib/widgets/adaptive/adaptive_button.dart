import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/utils/extensions/button_type_extension.dart';

class AdaptiveButton extends StatelessWidget {
  final String? text;
  final Widget? child;
  final double fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final double? wordSpacing;
  final Alignment textAlignment;
  final Color textColor;
  final Color textColorDark;
  final double width;
  final double height;
  final double minFontSize;
  final double maxFontSize;
  final int? maxLines;

  final double? cupertinoWidth;
  final double cupertinoHeight;
  //
  final bool autofocus;
  final bool disabled;
  final double opacity;
  final Clip clipBehavior;
  final Function()? onLongPress;
  final VoidCallback? onPressed;
  //
  final Color backgroundColor;
  final Color? splashColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? childPadding;
  final BorderRadius borderRadius;
  final OutlinedBorder? shape;
  final BorderSide? side;
  final MaterialTapTargetSize? tapTargetSize;
  final TextStyle? textStyle;
  final Widget? leading;
  final EdgeInsetsGeometry leadingPadding;
  final Widget? trailing;
  final EdgeInsetsGeometry trailingPadding;

  // Cupertino
  final Color disabledColor;
  final AlignmentGeometry alignment;
  final double minSize;
  final double pressedOpacity;
  final ButtonType type;
  final bool isLoading;

  AdaptiveButton({
    Key? key,
    this.text,
    double? fontSize,
    this.fontWeight,
    this.fontFamily,
    this.wordSpacing,
    this.minFontSize = 12,
    this.maxFontSize = double.infinity,
    this.maxLines = 1,
    this.textAlignment = Alignment.center,
    this.alignment = Alignment.center,
    Color? textColor,
    Color? textColorDark,
    this.width = double.infinity,
    double? height,
    this.cupertinoWidth,
    double? cupertinoHeight,
    this.autofocus = false,
    this.disabled = false,
    double? opacity,
    this.clipBehavior = Clip.antiAlias,
    this.onLongPress,
    Color? backgroundColor,
    this.splashColor,
    this.elevation,
    this.padding,
    this.childPadding,
    BorderRadius? borderRadius,
    this.shape,
    this.side,
    this.tapTargetSize,
    this.textStyle,
    this.leading,
    this.leadingPadding = EdgeInsets.zero,
    this.trailing,
    this.trailingPadding = EdgeInsets.zero,
    this.child,
    Color? disabledColor,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = 0.4,
    this.onPressed,
    this.isLoading = false,
  })  : assert(text != null || child != null),
        fontSize = fontSize ?? 16.0.sp,
        height = height ?? 0.06.h,
        cupertinoHeight = cupertinoHeight ?? 0.065.sh,
        type = disabled && (Platform.isIOS || Platform.isMacOS)
            ? ButtonType.elevated
            : ButtonType.flat,
        opacity = disabled ? 0.6 : opacity ?? 1.0,
        borderRadius =
            borderRadius ?? BorderRadius.circular(Utils.buttonRadius),
        disabledColor = disabled
            ? CupertinoColors.inactiveGray
            : CupertinoColors.quaternarySystemFill,
        backgroundColor = backgroundColor ??
            Utils.platform_(
              material: Palette.accentColor,
              cupertino: CupertinoColors.systemFill,
            )!,
        textColor = textColor ?? Palette.text100,
        textColorDark = textColorDark ?? textColor ?? Palette.text100Dark,
        super(key: key);

  AdaptiveButton.filled({
    Key? key,
    this.text,
    double? fontSize,
    this.fontWeight,
    this.fontFamily,
    this.wordSpacing,
    this.minFontSize = 12,
    this.maxFontSize = double.infinity,
    this.maxLines = 1,
    this.textAlignment = Alignment.center,
    this.alignment = Alignment.center,
    Color? textColor,
    Color? textColorDark,
    this.width = double.infinity,
    double? height,
    this.cupertinoWidth,
    double? cupertinoHeight,
    this.autofocus = false,
    this.disabled = false,
    double? opacity,
    this.clipBehavior = Clip.antiAlias,
    this.onLongPress,
    Color? backgroundColor,
    this.splashColor,
    this.elevation,
    this.padding,
    this.childPadding,
    BorderRadius? borderRadius,
    this.shape,
    this.side,
    this.tapTargetSize,
    this.textStyle,
    this.leading,
    this.leadingPadding = EdgeInsets.zero,
    this.trailing,
    this.trailingPadding = EdgeInsets.zero,
    this.child,
    Color? disabledColor,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = 0.4,
    this.onPressed,
    this.isLoading = false,
  })  : assert(text != null || child != null),
        fontSize = fontSize ?? 16.0.sp,
        height = height ?? 0.06.h,
        cupertinoHeight = cupertinoHeight ?? 0.065.sh,
        type = ButtonType.elevated,
        opacity = disabled ? 0.6 : opacity ?? 1.0,
        borderRadius =
            borderRadius ?? BorderRadius.circular(Utils.buttonRadius),
        disabledColor = disabled
            ? CupertinoColors.inactiveGray
            : CupertinoColors.quaternarySystemFill,
        backgroundColor = backgroundColor ??
            Utils.platform_(
              material: Palette.accentColor,
              cupertino: CupertinoColors.systemFill,
            )!,
        textColor = textColor ?? Palette.text100,
        textColorDark = textColorDark ?? textColor ?? Palette.text100Dark,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      crossFadeState:
          isLoading ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      layoutBuilder: Utils.crossFadeLayoutBuilder,
      duration: const Duration(milliseconds: 250),
      secondChild: App.loadingSpinningLines,
      firstChild: PlatformBuilder(
        cupertino: (context) => type.fold(
          elevated: () => SizedBox(
            width: cupertinoWidth ?? width,
            height: cupertinoHeight,
            child: CupertinoButton.filled(
              key: key,
              alignment: alignment,
              borderRadius: borderRadius,
              pressedOpacity: pressedOpacity,
              minSize: minSize,
              disabledColor: disabledColor,
              padding: padding ?? EdgeInsets.zero,
              onPressed: disabled ? null : onPressed,
              child: _child(context),
            ),
          ),
          flat: () => SizedBox(
            width: cupertinoWidth ?? width,
            height: cupertinoHeight,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                border: side?.let((it) => Border.fromBorderSide(it)),
              ),
              child: CupertinoButton(
                key: key,
                alignment: alignment,
                borderRadius: borderRadius,
                pressedOpacity: pressedOpacity,
                minSize: minSize,
                color: App.resolveColor(backgroundColor),
                disabledColor: disabledColor,
                padding: padding ?? EdgeInsets.zero,
                onPressed: disabled ? null : onPressed,
                child: _child(context),
              ),
            ),
          ),
        ),
        material: (context) => type.fold(
          flat: () => SizedBox(
            width: width,
            height: height,
            child: TextButton(
              key: key,
              onPressed: disabled ? null : onPressed,
              autofocus: autofocus,
              clipBehavior: clipBehavior,
              onLongPress: onLongPress,
              style: TextButton.styleFrom(
                backgroundColor: disabled
                    ? backgroundColor == Colors.transparent
                        ? backgroundColor
                        : backgroundColor.withOpacity(0.4)
                    : backgroundColor,
                alignment: alignment,
                elevation: elevation,
                side: side,
                splashFactory: CustomSplashFactory(splashColor: splashColor),
                padding: padding,
                shape:
                    shape ?? RoundedRectangleBorder(borderRadius: borderRadius),
                tapTargetSize: tapTargetSize,
                textStyle: textStyle,
              ),
              child: _child(context),
            ),
          ),
          elevated: () => ElevatedButton(
            key: key,
            onPressed: disabled ? null : onPressed,
            autofocus: autofocus,
            clipBehavior: clipBehavior,
            onLongPress: onLongPress,
            style: ElevatedButton.styleFrom(
              primary: disabled
                  ? backgroundColor == Colors.transparent
                      ? backgroundColor
                      : backgroundColor.withOpacity(0.4)
                  : backgroundColor,
              alignment: alignment,
              elevation: elevation,
              padding: padding,
              splashFactory: CustomSplashFactory(splashColor: splashColor),
              shape:
                  shape ?? RoundedRectangleBorder(borderRadius: borderRadius),
              tapTargetSize: tapTargetSize,
              textStyle: textStyle,
            ),
            child: _child(context),
          ),
        ),
      ),
    );
  }

  Widget get _text => AdaptiveText(
        text ?? '',
        maxLines: maxLines,
        minFontSize: minFontSize,
        maxFontSize: maxFontSize,
        softWrap: true,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          wordSpacing: wordSpacing,
          color: App.resolveColor(textColor, dark: textColorDark),
        ).merge(textStyle),
      );

  Widget _child(BuildContext ctx) => Visibility(
        visible: text != null && !text!.isBlank,
        replacement: Padding(
          padding: childPadding ?? EdgeInsets.zero,
          child: child ?? const SizedBox.shrink(),
        ),
        child: SizedBox(
          // width: width,
          // height: height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (leading != null)
                Flexible(
                  flex: 2,
                  child: Padding(padding: leadingPadding, child: leading!),
                ),
              //
              Flexible(
                flex: 4,
                child: Padding(
                  padding: childPadding ?? EdgeInsets.zero,
                  child: Visibility(
                    visible: leading != null || trailing != null,
                    replacement:
                        Align(alignment: Alignment.center, child: _text),
                    child: _text,
                  ),
                ),
              ),
              //
              if (trailing != null)
                Flexible(
                  flex: 2,
                  child: Padding(padding: trailingPadding, child: trailing!),
                ),
            ],
          ),
        ),
      );
}
