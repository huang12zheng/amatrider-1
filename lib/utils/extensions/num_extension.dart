import 'dart:math' as math;
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:flutter/widgets.dart';

extension NumX<T extends num> on T {
  T decimal(int places) {
    var mod = math.pow(10.0, places).toDouble();
    return ((toDouble() * mod).round().toDouble() / mod) as T;
  }

  bool isBtw(num from, num to) => from < this && to > this;

  bool get isInteger => this is int || roundToDouble() == num.parse(toStringAsFixed(1));

  num get roundToIntOrDouble => isInteger ? floor() : num.parse(toStringAsFixed(1));

  double get toTurk => this * Const.defaultConversionRate;

  /// Multiple of screen width
  double get w => MediaQuery.of(getIt<AppRouter>().navigatorKey.currentContext!).size.width * this;

  /// Multiple of screen height
  double get h => MediaQuery.of(getIt<AppRouter>().navigatorKey.currentContext!).size.height * this;

  ///[ScreenUtil.radius]
  double get r => ScreenUtil().radius(this);

  ///[ScreenUtil.setSp]
  double get sp => ScreenUtil().setSp(this);

  /// Shortest screen-side width
  double get sw => MediaQuery.of(getIt<AppRouter>().navigatorKey.currentContext!).size.shortestSide * this;

  /// Longest screen-side height
  double get sh => MediaQuery.of(getIt<AppRouter>().navigatorKey.currentContext!).size.longestSide * this;
}
