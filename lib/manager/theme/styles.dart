import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:amatrider/utils/palette.dart';
import 'package:amatrider/utils/utils.dart';

part 'styles-adapter.dart';

const String LIGHT_THEME_ID = 'Light-THEME-ID';
const String DARK_THEME_ID = 'Dark-THEME-ID';

class AppTheme extends HiveObject {
  final Color? _accentColor;
  final Brightness? _accentColorBrightness;
  final BottomNavigationBarThemeData? _bottomNavigationBarTheme;
  final BottomSheetThemeData? _bottomSheetThemeData;
  final Brightness? _brightness;
  final Color? _buttonColor;
  final ButtonThemeData? _buttonThemeData;
  final ColorScheme? _colorScheme;
  final Color? _indicatorColor;
  final Color? _primaryColor;
  final Color? _primaryColorDark;
  final Color? _primaryColorLight;
  final RadioThemeData? _radioThemeData;
  final Color? _scaffoldBackgroundColor;
  final Color? _splashColor;
  final InteractiveInkFeatureFactory? _splashFactory;
  final SwitchThemeData? _switchThemeData;
  final InputDecorationTheme? _textFieldTheme;
  final TextSelectionThemeData? _textSelectionThemeData;
  final TextTheme? _textTheme;
  final Color? _toggleableActiveColor;
  final VisualDensity? _visualDensity;
  final ThemeMode themeMode;

  final String id;

  AppTheme._({
    required this.id,
    required this.themeMode,
    Brightness? brightness,
    Brightness? accentColorBrightness,
    Color? primaryColor,
    Color? buttonColor,
    Color? indicatorColor,
    Color? primaryColorDark,
    Color? primaryColorLight,
    InputDecorationTheme? inputTheme,
    Color? scaffoldBackgroundColor,
    Color? toggleableActiveColor,
    Color? accentColor,
    Color? splashColor,
    ColorScheme? colorScheme,
    InteractiveInkFeatureFactory? splashFactory,
    VisualDensity? visualDensity,
    TextTheme? textTheme,
    BottomSheetThemeData? bottomSheetThemeData,
    BottomNavigationBarThemeData? bottomNavigationBarTheme,
    ButtonThemeData? buttonThemeData,
    RadioThemeData? radioThemeData,
    SwitchThemeData? switchThemeData,
    TextSelectionThemeData? textSelectionThemeData,
  })  : _brightness = brightness,
        _accentColorBrightness = accentColorBrightness,
        _primaryColor = primaryColor,
        _buttonColor = buttonColor,
        _indicatorColor = indicatorColor,
        _primaryColorDark = primaryColorDark,
        _primaryColorLight = primaryColorLight,
        _toggleableActiveColor = toggleableActiveColor,
        _textFieldTheme = inputTheme,
        _scaffoldBackgroundColor = scaffoldBackgroundColor,
        _accentColor = accentColor,
        _splashColor = splashColor,
        _colorScheme = colorScheme,
        _splashFactory = splashFactory,
        _visualDensity = visualDensity,
        _bottomSheetThemeData = bottomSheetThemeData,
        _bottomNavigationBarTheme = bottomNavigationBarTheme,
        _buttonThemeData = buttonThemeData,
        _radioThemeData = radioThemeData,
        _switchThemeData = switchThemeData,
        _textSelectionThemeData = textSelectionThemeData,
        _textTheme = textTheme;

  static TextStyle? cupertinoTextStyle(BuildContext ctx) => GoogleFonts.manrope(
        color: CupertinoDynamicColor.resolve(
          const CupertinoDynamicColor.withBrightness(
            color: Palette.text100,
            darkColor: Palette.text100Dark,
          ),
          ctx,
        ),
      );

  /// Light Theme Configurations
  static AppTheme light() {
    return AppTheme._(
      id: LIGHT_THEME_ID,
      themeMode: ThemeMode.system,
      brightness: Brightness.light,
      accentColorBrightness: Brightness.light,
      primaryColor: platform(cupertino: () => Palette.accentColor),
      indicatorColor: Colors.white,
      toggleableActiveColor: Palette.primaryColor.shade800,
      splashFactory: InkRipple.splashFactory,
      scaffoldBackgroundColor: Palette.primaryColor,
      colorScheme: ColorScheme.fromSwatch(
        accentColor: Palette.accentColor,
        brightness: Brightness.light,
        primarySwatch: Palette.primaryColor,
        primaryColorDark: Palette.primaryColor.shade800,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textSelectionThemeData: TextSelectionThemeData(
        cursorColor: Palette.accentColor,
        selectionColor: Palette.accent40,
        selectionHandleColor: Palette.accentColor.shade400,
      ),
      radioThemeData: RadioThemeData(
        fillColor: MaterialStateProperty.all(Palette.accentColor),
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
      switchThemeData: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Palette.accentColor),
        trackColor: MaterialStateProperty.all(Palette.accent20),
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
      inputTheme: InputDecorationTheme(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        isDense: true,
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey),
        labelStyle: const TextStyle(color: Colors.grey),
        errorStyle: const TextStyle(color: Palette.errorRed),
        fillColor: Palette.inputBgColor,
        contentPadding: Utils.inputPadding,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Palette.errorRed, width: 2.0),
          borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Palette.errorRed, width: 1.3),
          borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
        ),
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(),
        headline2: TextStyle(),
        headline3: TextStyle(),
        headline4: TextStyle(),
        headline5: TextStyle(),
        headline6: TextStyle(),
        bodyText1: TextStyle(),
        bodyText2: TextStyle(),
      ).apply(
        displayColor: Palette.text100, // For headline 1 - 6
        bodyColor: Palette.text100, // For every other text style
      ),
    );
  }

  /// Dark Theme Configurations
  static AppTheme dark() {
    return AppTheme._(
      id: DARK_THEME_ID,
      themeMode: ThemeMode.system,
      brightness: Brightness.dark,
      accentColorBrightness: Brightness.dark,
      primaryColor: platform(cupertino: () => Palette.accentColor),
      toggleableActiveColor: Palette.secondaryColor.shade800,
      indicatorColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      splashFactory: InkRipple.splashFactory,
      scaffoldBackgroundColor: Palette.secondaryColor,
      colorScheme: ColorScheme.fromSwatch(
        accentColor: Palette.accentColor,
        brightness: Brightness.dark,
        primarySwatch: Palette.secondaryColor,
        primaryColorDark: Palette.secondaryColor.shade800,
      ),
      radioThemeData: RadioThemeData(
        fillColor: MaterialStateProperty.all(Palette.accentColor),
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
      switchThemeData: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Palette.accent20),
        trackColor: MaterialStateProperty.all(Palette.accentColor.shade400),
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
      textSelectionThemeData: TextSelectionThemeData(
        cursorColor: Colors.white70,
        selectionColor: Palette.accentColor.shade100,
        selectionHandleColor: Palette.accentColor,
      ),
      inputTheme: InputDecorationTheme(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        isDense: true,
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey),
        labelStyle: const TextStyle(color: Colors.grey),
        errorStyle: const TextStyle(color: Palette.errorRed),
        fillColor: Palette.secondaryColor.shade400,
        contentPadding: Utils.inputPadding,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Palette.errorRed, width: 2.0),
          borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Palette.errorRed, width: 1.3),
          borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
        ),
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(),
        headline2: TextStyle(),
        headline3: TextStyle(),
        headline4: TextStyle(),
        headline5: TextStyle(),
        headline6: TextStyle(),
        bodyText1: TextStyle(),
        bodyText2: TextStyle(),
      ).apply(
        displayColor: Colors.white, // For headline 1 - 6
        bodyColor: Colors.white, // For every other text style
      ),
    );
  }

  ThemeData themeData() {
    return ThemeData(
      brightness: _brightness,
      primaryColor: _primaryColor,
      indicatorColor: _indicatorColor,
      primaryColorDark: _primaryColorDark,
      primaryColorLight: _primaryColorLight,
      toggleableActiveColor: _toggleableActiveColor,
      textSelectionTheme: _textSelectionThemeData,
      inputDecorationTheme: _textFieldTheme,
      colorScheme: _colorScheme,
      splashColor: _splashColor,
      splashFactory: _splashFactory,
      scaffoldBackgroundColor: _scaffoldBackgroundColor,
      visualDensity: _visualDensity,
      bottomSheetTheme: _bottomSheetThemeData,
      bottomNavigationBarTheme: _bottomNavigationBarTheme,
      buttonTheme: _buttonThemeData,
      radioTheme: _radioThemeData,
      switchTheme: _switchThemeData,
      textTheme: GoogleFonts.manropeTextTheme(_textTheme),
    );
  }

  CupertinoThemeData cupertinoThemeData(BuildContext ctx) {
    return CupertinoThemeData(
      brightness: _brightness,
      primaryColor: CupertinoDynamicColor.resolve(
        const CupertinoDynamicColor.withBrightness(
          color: Palette.accentColor,
          darkColor: Palette.accentDark,
        ),
        ctx,
      ),
      textTheme: CupertinoTextThemeData(
        primaryColor: CupertinoDynamicColor.resolve(
          const CupertinoDynamicColor.withBrightness(
            color: Palette.accentColor,
            darkColor: Palette.accentDark,
          ),
          ctx,
        ),
        textStyle: AppTheme.cupertinoTextStyle(ctx),
        actionTextStyle: AppTheme.cupertinoTextStyle(ctx),
        dateTimePickerTextStyle: AppTheme.cupertinoTextStyle(ctx),
        navLargeTitleTextStyle: AppTheme.cupertinoTextStyle(ctx),
        // navTitleTextStyle: AppTheme.cupertinoTextStyle(ctx),
        pickerTextStyle: AppTheme.cupertinoTextStyle(ctx),
        tabLabelTextStyle: AppTheme.cupertinoTextStyle(ctx),
      ),
      scaffoldBackgroundColor: CupertinoDynamicColor.resolve(
        const CupertinoDynamicColor.withBrightness(
          color: Palette.neutralF9,
          darkColor: Palette.secondaryColor,
        ),
        ctx,
      ),
      primaryContrastingColor: Colors.white,
      barBackgroundColor: CupertinoDynamicColor.resolve(
        CupertinoDynamicColor.withBrightness(
          color: Palette.neutralF9,
          darkColor: Palette.secondaryColor.shade600,
        ),
        ctx,
      ),
    );
  }

  AppTheme copyWith({
    ThemeMode? themeMode,
    Brightness? brightness,
    Brightness? accentColorBrightness,
    Color? primaryColor,
    Color? buttonColor,
    Color? indicatorColor,
    Color? primaryColorDark,
    Color? primaryColorLight,
    Color? toggleableActiveColor,
    Color? scaffoldBackgroundColor,
    Color? accentColor,
    Color? splashColor,
    ColorScheme? colorScheme,
    InputDecorationTheme? textFieldTheme,
    InteractiveInkFeatureFactory? splashFactory,
    VisualDensity? visualDensity,
    TextTheme? textTheme,
    BottomSheetThemeData? bottomSheetThemeData,
    BottomNavigationBarThemeData? bottomNavigationBarTheme,
    ButtonThemeData? buttonThemeData,
    RadioThemeData? radioThemeData,
    SwitchThemeData? switchThemeData,
    TextSelectionThemeData? textSelectionThemeData,
  }) {
    return AppTheme._(
      id: id,
      themeMode: themeMode ?? this.themeMode,
      brightness: brightness ?? _brightness,
      accentColorBrightness: accentColorBrightness ?? _accentColorBrightness,
      primaryColor: primaryColor ?? _primaryColor,
      buttonColor: buttonColor ?? _buttonColor,
      indicatorColor: indicatorColor ?? _indicatorColor,
      primaryColorDark: primaryColorDark ?? _primaryColorDark,
      primaryColorLight: primaryColorLight ?? _primaryColorLight,
      inputTheme: textFieldTheme ?? _textFieldTheme,
      scaffoldBackgroundColor: scaffoldBackgroundColor ?? _scaffoldBackgroundColor,
      toggleableActiveColor: toggleableActiveColor ?? _toggleableActiveColor,
      accentColor: accentColor ?? _accentColor,
      splashColor: splashColor ?? _splashColor,
      splashFactory: splashFactory ?? _splashFactory,
      colorScheme: colorScheme ?? _colorScheme,
      visualDensity: visualDensity ?? _visualDensity,
      textTheme: textTheme ?? _textTheme,
      bottomSheetThemeData: bottomSheetThemeData ?? _bottomSheetThemeData,
      bottomNavigationBarTheme: bottomNavigationBarTheme ?? _bottomNavigationBarTheme,
      buttonThemeData: buttonThemeData ?? _buttonThemeData,
      radioThemeData: radioThemeData ?? _radioThemeData,
      switchThemeData: switchThemeData ?? _switchThemeData,
      textSelectionThemeData: textSelectionThemeData ?? _textSelectionThemeData,
    );
  }

  static T? platform<T>({
    T? Function()? material,
    T? Function()? cupertino,
  }) {
    if (Platform.isIOS || Platform.isMacOS)
      return cupertino?.call();
    else
      return material?.call();
  }
}
