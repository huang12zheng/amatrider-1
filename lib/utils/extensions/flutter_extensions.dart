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
      right:
          insets?.right != null && insets?.right != 0.0 ? insets?.right : right,
      bottom: insets?.bottom != null && insets?.bottom != 0.0
          ? insets?.bottom
          : bottom,
      top: insets?.top != null && insets?.top != 0.0 ? insets?.top : top,
    );
  }
}
