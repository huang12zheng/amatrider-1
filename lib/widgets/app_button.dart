import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render AppButton.
class AppButton extends StatelessWidget {
  final Color? backgroundColor;
  final Widget? child;
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
  final BorderSide? side;
  final Color? splashColor;
  final String? text;
  final Color? textColor;
  final Color? textColorDark;
  final double width;

  const AppButton({
    Key? key,
    this.text,
    this.height,
    this.width = double.infinity,
    this.cupertinoHeight,
    this.cupertinoWidth,
    this.child,
    this.fontSize,
    this.fontWeight,
    this.onPressed,
    this.textColor,
    this.textColorDark,
    this.backgroundColor,
    this.splashColor,
    this.isLoading = false,
    this.disabled = false,
    this.loaderHeight,
    this.loaderWidth,
    this.side,
    this.isDefaultText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      text: text,
      fontSize: fontSize,
      fontWeight: fontWeight,
      textColor: textColor ?? Colors.white,
      textColorDark: textColorDark ?? textColor,
      height: height,
      width: width,
      isDefaultText: isDefaultText,
      cupertinoHeight: cupertinoHeight,
      cupertinoWidth: cupertinoWidth,
      isLoading: isLoading,
      loaderHeight: loaderHeight,
      loaderWidth: loaderWidth,
      disabled: disabled,
      padding: App.platform.cupertino(EdgeInsets.zero),
      textStyle: const TextStyle(letterSpacing: Utils.labelLetterSpacing),
      backgroundColor: backgroundColor ?? Palette.accentColor,
      splashColor: splashColor ?? App.resolveColor(Colors.white24, dark: Colors.white12),
      side: side,
      onPressed: onPressed,
      child: child,
    );
  }
}
