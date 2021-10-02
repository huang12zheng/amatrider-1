import 'package:flutter/foundation.dart';

extension PlatformX on TargetPlatform {
  T fold<T>({
    T Function()? cupertino,
    required T Function() material,
  }) {
    switch (this) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return cupertino == null ? material.call() : cupertino.call();
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
      default:
        return material.call();
    }
  }

  T? cupertino<T>(T? value) {
    switch (this) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return value as T;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
      default:
        return null;
    }
  }

  T? material<T>(T? value) {
    switch (this) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return null;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
      default:
        return value as T;
    }
  }
}
