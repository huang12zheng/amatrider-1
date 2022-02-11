// ignore_for_file: prefer_single_quotes

import 'package:amatrider/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inflection3/inflection3.dart' as _l1;
import 'package:intl/intl.dart';
import 'package:kt_dart/kt.dart';

enum StringCase { upper, lower, title }

extension StringX on String {
  /// Capitalize only first letter in string
  ///
  /// Example: your name => Your name
  String capitalizeFirst([String? str]) => '${(str ?? this[0]).toUpperCase()}${substring(1).toLowerCase()}';

  String titleCase() {
    var splitStr = toLowerCase().split(' ');
    for (var i = 0; i < splitStr.length; i++) splitStr[i] = splitStr[i][0].toUpperCase() + splitStr[i].substring(1).toLowerCase();
    return splitStr.join(' ');
  }

  String cased(StringCase? type) {
    switch (type) {
      case StringCase.upper:
        return toUpperCase();
      case StringCase.lower:
        return toLowerCase();
      case StringCase.title:
        return titleCase();
      default:
        return this;
    }
  }

  /// Checks if String contains b (Treating or interpreting upper- and lowercase letters as being the same).
  bool caseInsensitiveContains(String? b) => toLowerCase().contains('${b?.toLowerCase()}');

  /// Checks if String contains b or b contains String (Treating or interpreting upper- and lowercase letters as being the same).
  bool containsAny(String? b) {
    var lowA = toLowerCase();
    var lowB = b?.toLowerCase();
    return lowA.contains('$lowB') || (lowB != null && lowB.contains(lowA));
  }

  bool equals(String? other, {bool lowercase = true}) {
    final _this = lowercase ? toLowerCase() : this;
    return identical(_this, other?.toLowerCase()) || const DeepCollectionEquality().equals(_this, other?.toLowerCase());
  }

  /// Erase occurrence of strings matching Patterns
  String erase(List<Pattern> patterns, {bool recursive = true, Direction position = Direction.left, int startIndex = 0}) {
    var init = this;
    patterns.forEach((pattern) {
      if (pattern.toString().isEmpty) return;

      if (caseInsensitiveContains('$pattern')) {
        if (recursive) {
          init = replaceAll(pattern, '');
        } else {
          switch (position) {
            case Direction.left:
              init = replaceFirst(RegExp('$pattern'), '', indexOf(pattern));
              break;
            case Direction.right:
              init = replaceFirst(RegExp('$pattern'), '', lastIndexOf(pattern));
              break;
            case Direction.none:
            default:
              assert(!startIndex.isNegative && !(startIndex > length - 1));
              init = replaceFirst(RegExp('$pattern'), '', startIndex);
              break;
          }
        }
      }
    });
    return init;
  }

  NumberFormat asCurrencyFormat({
    String? mask = '#,##0',
    bool includeSymbol = false,
    bool decimal = false,
    String? currency,
    String locale = "en_NG",
  }) =>
      NumberFormat.currency(
        name: currency,
        symbol: includeSymbol ? null : '',
        customPattern: mask,
        decimalDigits: decimal ? 1 : 0,
      );

  String pad([String? pad = '', Direction start = Direction.right]) {
    switch (start) {
      case Direction.left:
        return '$pad${this}';
      case Direction.right:
        return '${this}$pad';
      case Direction.none:
      default:
        return '$pad${this}$pad';
    }
  }

  String padIf([bool condition = true, String? pad = '', Direction position = Direction.right]) {
    if (condition) return this.pad(pad, position);
    return this;
  }

  String padNotEmpty(String? pad, [Direction position = Direction.right]) {
    if (trim().isNotEmpty) return this.pad(pad, position);
    return this;
  }

  /// Returns string in currency format
  ///
  /// Example: 50000 => 50,000
  String asCurrency({
    String? mask,
    bool symbol = true,
    String? currency = '${Utils.currency}',
    String locale = "tr_TUR",
  }) {
    if (this == 'null' || isEmpty) return '';

    final _this = num.tryParse(this);

    return asCurrencyFormat(
            mask: mask, includeSymbol: symbol, currency: currency, decimal: _this != null && !_this.isInteger, locale: locale)
        .format(_this);
  }

  /// Returns only the First character of every word matching _**[pattern]**_ separated by _**[separator]**_
  String onlyInitials({Pattern pattern = ' ', String glue = '.'}) {
    if (trim().isEmpty) return this;
    var split = this.split(pattern);
    var join = split.fold<String>('', (previousValue, element) => '$previousValue${element.substring(0, 1)}$glue');
    return join.erase([glue], recursive: false, position: Direction.right);
  }

  /// Checks if string consist only numeric.
  /// Numeric only doesn't accepting '.' which double data type have
  static bool isNumericOnly(String s) => RegExp(r'^\d+$').hasMatch(s);

  String pluralize([int quantity = 2, String? value]) {
    assert(quantity >= 0);
    switch (quantity) {
      case 0:
        return _l1.convertToSingular('${value ?? this}');
      case 1:
        return _l1.convertToSingular('${value ?? this}');
      case 2:
      default:
        return _l1.convertToPlural(this);
    }
  }

  /// Extract numeric value of string
  /// Example: OTP 12312 27/04/2020 => 1231227042020ß
  /// If firstword only is true, then the example return is '12312'
  /// (first found numeric word)
  static String numericOnly(String s, {bool firstWordOnly = false}) {
    var numericOnlyStr = '';
    for (var i = 0; i < s.length; i++) {
      if (isNumericOnly(s[i])) numericOnlyStr += s[i];
      if (firstWordOnly && numericOnlyStr.isNotEmpty && s[i] == ' ') break;
    }
    return numericOnlyStr;
  }

  String get first => '${this[0]}';

  String replaceRandom() {
    return split('').asMap().entries.map((e) {
      final check1 = RegExp(r'[A-Za-z0-9][@][A-Za-z]{1}').stringMatch(this)?.caseInsensitiveContains(e.value) ?? false;

      final check2 = RegExp(r'\.[A-Za-z]+$').stringMatch(this)?.caseInsensitiveContains(e.value) ?? false;

      if (e.value.isNotEmpty && e.key != 0 && e.key != 1 && !check1 && !check2) {
        return e.value.replaceFirst(e.value, '.');
      }
      return e.value;
    }).join();
  }

  String removeNewLines() => replaceAll('\n', ' ');

  String trimWhiteSpaces() => trim().replaceAll(" ", "");

  String get formatCardNumber {
    return "$this".split('').toImmutableList().foldIndexed(
      '',
      (i, p, next) {
        if (i > 0 && i % 4 == 0) return '$p - $next';
        return "$p$next";
      },
    );
  }
}

enum Direction {
  none,
  left,
  right,
}
