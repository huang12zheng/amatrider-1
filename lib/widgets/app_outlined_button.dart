import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render AppOutlinedButton.
class AppOutlinedButton extends StatelessWidget {
  final Color? borderColor;
  final Color? borderColorDark;
  final Widget? child;
  final EdgeInsetsGeometry? childPadding;
  final double? cupertinoHeight;
  final double? cupertinoWidth;
  final bool disabled;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final bool? isDefaultText;
  final bool isLoading;
  final double? loaderHeight;
  final double? loaderWidth;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final Color? splashColor;
  final Color? splashColorDark;
  final String? text;
  final Color textColor;
  final Color textColorDark;
  final double width;

  const AppOutlinedButton({
    Key? key,
    this.text,
    Color? textColor,
    Color? textColorDark,
    this.height,
    this.width = double.infinity,
    this.cupertinoHeight,
    this.cupertinoWidth,
    this.disabled = false,
    this.child,
    this.fontSize,
    this.fontWeight,
    this.onPressed,
    this.padding,
    this.isLoading = false,
    this.loaderHeight,
    this.loaderWidth,
    this.borderColor,
    this.borderColorDark,
    this.splashColor,
    this.splashColorDark,
    this.isDefaultText,
    this.childPadding,
  })  : textColor = textColor ?? Palette.accentColor,
        textColorDark = textColorDark ?? textColor ?? Palette.accentColor,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      text: text,
      height: height,
      width: width,
      cupertinoHeight: cupertinoHeight,
      cupertinoWidth: cupertinoWidth,
      disabled: disabled,
      fontSize: fontSize,
      isDefaultText: isDefaultText,
      fontWeight: fontWeight,
      padding: App.platform.cupertino(EdgeInsets.zero),
      isLoading: isLoading,
      loaderHeight: loaderHeight,
      loaderWidth: loaderWidth,
      textColor: textColor,
      childPadding: childPadding,
      textColorDark: textColorDark,
      textStyle: const TextStyle(letterSpacing: Utils.labelLetterSpacing),
      backgroundColor: Colors.transparent,
      splashColor: Utils.foldTheme(
        light: () => splashColor ?? Colors.grey.shade300,
        dark: () => splashColorDark ?? Colors.grey.shade700,
      ),
      side: BorderSide(
        color: App.resolveColor(
          borderColor ?? Palette.accentColor,
          dark: borderColorDark ?? borderColor ?? Palette.accentColor,
        )!,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
