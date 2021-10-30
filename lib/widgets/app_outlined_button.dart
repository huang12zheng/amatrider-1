import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// A stateless widget to render AppOutlinedButton.
class AppOutlinedButton extends StatelessWidget {
  final double? height;
  final double width;
  final bool disabled;
  final double? cupertinoHeight;
  final double? cupertinoWidth;
  final String? text;
  final Color textColor;
  final Color textColorDark;
  final Widget? child;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;
  final FontWeight? fontWeight;
  final VoidCallback? onPressed;
  final bool isLoading;
  final Color? borderColor;
  final Color? borderColorDark;
  final Color? splashColor;
  final Color? splashColorDark;

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
    this.borderColor,
    this.borderColorDark,
    this.splashColor,
    this.splashColorDark,
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
      fontWeight: fontWeight,
      padding: App.platform.cupertino(EdgeInsets.zero),
      isLoading: isLoading,
      textColor: textColor,
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
