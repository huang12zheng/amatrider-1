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
  final Widget? child;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;
  final FontWeight? fontWeight;
  final VoidCallback? onPressed;
  final bool isLoading;

  const AppOutlinedButton({
    Key? key,
    this.text,
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
  }) : super(key: key);

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
      padding: padding,
      isLoading: isLoading,
      textColor: App.resolveColor(
        Palette.accentColor,
        dark: Colors.white,
      ),
      textStyle: const TextStyle(
        letterSpacing: Utils.labelLetterSpacing,
      ),
      backgroundColor: Colors.transparent,
      splashColor: Utils.foldTheme(
        light: () => Colors.grey.shade300,
        dark: () => Colors.grey.shade700,
      ),
      side: const BorderSide(color: Palette.accentColor),
      onPressed: onPressed,
      child: child,
    );
  }
}
