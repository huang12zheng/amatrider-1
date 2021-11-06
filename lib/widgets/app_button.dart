import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// A stateless widget to render AppButton.
class AppButton extends StatelessWidget {
  final String? text;
  final double? height;
  final double width;
  final double? cupertinoHeight;
  final double? cupertinoWidth;
  final Widget? child;
  final double? fontSize;
  final FontWeight? fontWeight;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final bool isLoading;
  final bool disabled;

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
    this.backgroundColor,
    this.isLoading = false,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      text: text,
      fontSize: fontSize,
      fontWeight: fontWeight,
      textColor: Colors.white,
      height: height,
      width: width,
      cupertinoHeight: cupertinoHeight,
      cupertinoWidth: cupertinoWidth,
      isLoading: isLoading,
      disabled: disabled,
      padding: App.platform.cupertino(EdgeInsets.zero),
      textStyle: const TextStyle(letterSpacing: Utils.labelLetterSpacing),
      backgroundColor: backgroundColor ??
          App.resolveColor(Palette.accentColor, dark: Colors.transparent),
      splashColor: App.resolveColor(Colors.white24, dark: Colors.grey.shade800),
      side: Utils.foldTheme(
        light: () => null,
        dark: () => BorderSide(color: App.resolveColor(Colors.white70)!),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
