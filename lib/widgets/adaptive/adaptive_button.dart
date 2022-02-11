import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:amatrider/widgets/widgets.dart';
import 'package:amatrider/utils/utils.dart';

class AdaptiveButton extends StatelessWidget {
  final Function()? onLongPress;
  final AlignmentGeometry alignment;
  //
  final bool autofocus;

  //
  final Color backgroundColor;

  final BorderRadius borderRadius;
  final Widget? child;
  final EdgeInsetsGeometry? childPadding;
  final Clip clipBehavior;
  final double cupertinoHeight;
  final double? cupertinoWidth;
  final bool disabled;
  // Cupertino
  final Color disabledColor;

  final double? elevation;
  final String? fontFamily;
  final double fontSize;
  final FontWeight? fontWeight;
  final double height;
  final bool? isDefaultText;
  final bool isLoading;
  final Widget? leading;
  final EdgeInsetsGeometry leadingPadding;
  final double? loaderHeight;
  final double? loaderWidth;
  final double maxFontSize;
  final int? maxLines;
  final double minFontSize;
  final double minSize;
  final VoidCallback? onPressed;
  final double opacity;
  final EdgeInsetsGeometry? padding;
  final double pressedOpacity;
  final OutlinedBorder? shape;
  final BorderSide? side;
  final Color? splashColor;
  final MaterialTapTargetSize? tapTargetSize;
  final String? text;
  final Alignment textAlignment;
  final Color textColor;
  final Color textColorDark;
  final TextStyle? textStyle;
  final Widget? trailing;
  final EdgeInsetsGeometry trailingPadding;
  final ButtonType type;
  final double width;
  final double? wordSpacing;

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
    this.loaderHeight,
    this.loaderWidth,
    this.isDefaultText,
  })  : assert(text != null || child != null),
        fontSize = fontSize ?? 16.0.sp,
        height = height ?? 0.06.h,
        cupertinoHeight = cupertinoHeight ?? height ?? 0.06.h,
        type = disabled && (Platform.isIOS || Platform.isMacOS) ? ButtonType.elevated : ButtonType.flat,
        opacity = disabled ? 0.6 : opacity ?? 1.0,
        borderRadius = borderRadius ?? BorderRadius.circular(Utils.buttonRadius),
        disabledColor = disabled
            ? Utils.platform_(
                material: App.resolveColor(Colors.grey.shade400, dark: Colors.grey.shade700),
                cupertino: CupertinoColors.inactiveGray,
              )!
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
    this.loaderHeight,
    this.loaderWidth,
    this.isDefaultText,
  })  : assert(text != null || child != null),
        fontSize = fontSize ?? 16.0.sp,
        height = height ?? 0.06.h,
        cupertinoHeight = cupertinoHeight ?? height ?? 0.06.h,
        type = ButtonType.elevated,
        opacity = disabled ? 0.6 : opacity ?? 1.0,
        borderRadius = borderRadius ?? BorderRadius.circular(Utils.buttonRadius),
        disabledColor = disabled
            ? Utils.platform_(
                material: App.resolveColor(Colors.grey.shade400, dark: Colors.grey.shade700),
                cupertino: CupertinoColors.inactiveGray,
              )!
            : CupertinoColors.quaternarySystemFill,
        backgroundColor = backgroundColor ??
            Utils.platform_(
              material: Palette.accentColor,
              cupertino: CupertinoColors.systemFill,
            )!,
        textColor = textColor ?? Palette.text100,
        textColorDark = textColorDark ?? textColor ?? Palette.text100Dark,
        super(key: key);

  double get _loaderHeight => loaderHeight ?? height;
  double get _loaderWidth => loaderWidth ?? width;
  Widget get _text => AdaptiveText(
        text ?? '',
        maxLines: maxLines,
        minFontSize: minFontSize,
        maxFontSize: maxFontSize,
        softWrap: true,
        isDefault: isDefaultText,
        textAlign: TextAlign.center,
        fontSize: fontSize,
        fontWeight: fontWeight,
        wordSpacing: wordSpacing,
        textColor: textColor,
        textColorDark: textColorDark,
        style: TextStyle(fontFamily: fontFamily).merge(textStyle),
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
              if (leading != null) Flexible(child: Padding(padding: leadingPadding, child: leading!)),
              //
              Flexible(
                flex: 4,
                child: Padding(
                  padding: childPadding ?? EdgeInsets.zero,
                  child: Visibility(
                    visible: leading != null || trailing != null,
                    replacement: Align(alignment: Alignment.center, child: _text),
                    child: _text,
                  ),
                ),
              ),
              //
              if (trailing != null) Flexible(child: Padding(padding: trailingPadding, child: trailing!)),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return AnimatedVisibility(
      visible: !isLoading,
      replacement: SizedBox(
        height: _loaderHeight,
        width: _loaderWidth,
        child: App.loadingSpinningLines,
      ),
      child: PlatformBuilder(
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
            child: AnimatedOpacity(
              opacity: disabled ? 0.6 : opacity,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOutCirc,
              child: TextButton(
                key: key,
                onPressed: disabled ? null : onPressed,
                autofocus: autofocus,
                clipBehavior: clipBehavior,
                onLongPress: onLongPress,
                style: TextButton.styleFrom(
                  backgroundColor: disabled ? disabledColor : backgroundColor,
                  alignment: alignment,
                  elevation: elevation,
                  side: side,
                  splashFactory: CustomSplashFactory(splashColor: splashColor),
                  padding: padding,
                  shape: shape ?? RoundedRectangleBorder(borderRadius: borderRadius),
                  tapTargetSize: tapTargetSize,
                  textStyle: textStyle,
                ),
                child: _child(context),
              ),
            ),
          ),
          elevated: () => ElevatedButton(
            key: key,
            onPressed: disabled ? null : onPressed,
            autofocus: autofocus,
            clipBehavior: clipBehavior,
            onLongPress: onLongPress,
            style: ElevatedButton.styleFrom(
              primary: disabled ? disabledColor : backgroundColor,
              alignment: alignment,
              elevation: elevation,
              padding: padding,
              splashFactory: CustomSplashFactory(splashColor: splashColor),
              shape: shape ?? RoundedRectangleBorder(borderRadius: borderRadius),
              tapTargetSize: tapTargetSize,
              textStyle: textStyle,
            ),
            child: _child(context),
          ),
        ),
      ),
    );
  }
}
