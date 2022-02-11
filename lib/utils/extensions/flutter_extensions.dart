import 'package:amatrider/utils/extensions/num_extension.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension InputDecorationX on InputDecoration {
  InputDecoration merge(InputDecoration? other) {
    return copyWith(
      hintText: other?.hintText,
      hintStyle: other?.hintStyle,
      labelStyle: other?.labelStyle,
      labelText: other?.labelText,
      border: other?.border,
      filled: other?.filled,
      fillColor: other?.fillColor,
      contentPadding: other?.contentPadding,
      focusColor: other?.focusColor,
      focusedBorder: other?.focusedBorder,
      prefixIcon: other?.prefixIcon,
      suffixIcon: other?.suffixIcon,
      enabled: other?.enabled,
      hoverColor: other?.hoverColor,
    );
  }
}

extension EdgeInsetsGeometryX on EdgeInsets {
  EdgeInsetsGeometry merge(EdgeInsets? insets) {
    return copyWith(
      left: insets?.left != null && insets?.left != 0.0 ? insets?.left : left,
      right: insets?.right != null && insets?.right != 0.0 ? insets?.right : right,
      bottom: insets?.bottom != null && insets?.bottom != 0.0 ? insets?.bottom : bottom,
      top: insets?.top != null && insets?.top != 0.0 ? insets?.top : top,
    );
  }
}

extension InputDecorationThemeX on InputDecorationTheme {
  InputDecoration decor([InputDecoration? decoration]) {
    return InputDecoration(
      labelStyle: labelStyle,
      hintStyle: hintStyle,
      helperStyle: helperStyle,
      errorStyle: errorStyle,
      errorMaxLines: errorMaxLines,
      isDense: isDense,
      contentPadding: contentPadding,
      isCollapsed: isCollapsed,
      prefixStyle: prefixStyle,
      suffixStyle: suffixStyle,
      counterStyle: counterStyle,
      filled: filled,
      fillColor: fillColor,
      errorBorder: errorBorder,
      focusedBorder: focusedBorder,
      focusedErrorBorder: focusedErrorBorder,
      disabledBorder: disabledBorder,
      enabledBorder: enabledBorder,
      border: border,
      alignLabelWithHint: alignLabelWithHint,
      constraints: constraints,
      helperMaxLines: helperMaxLines,
      floatingLabelBehavior: floatingLabelBehavior,
      floatingLabelStyle: floatingLabelStyle,
      focusColor: focusColor,
      hoverColor: hoverColor,
    ).merge(decoration);
  }
}

extension WidgetGap on num {
  Widget get vertical => VerticalSpace(height: toDouble());

  Widget get verticalh => VerticalSpace(height: toDouble().h);

  Widget get horizontal => HorizontalSpace(width: toDouble());

  Widget get horizontalw => HorizontalSpace(width: toDouble().w);
}

extension BorderRadiusX on num {
  BorderRadius get br => BorderRadius.circular(toDouble());
}

extension TargetPlatformX on TargetPlatform {
  bool get isAndroid => this == TargetPlatform.android;

  bool get isIOS => this == TargetPlatform.iOS;

  bool get isFuchsia => this == TargetPlatform.fuchsia;

  bool get isDesktop => this == TargetPlatform.windows || this == TargetPlatform.linux || this == TargetPlatform.macOS;

  bool get isWeb => kIsWeb;

  bool get isLinux => this == TargetPlatform.linux;

  bool get isMacOS => this == TargetPlatform.macOS;
}
