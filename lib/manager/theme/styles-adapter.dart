part of 'styles.dart';

class AppThemeAdapter extends TypeAdapter<AppTheme> {
  @override
  int get typeId => 23;

  @override
  AppTheme read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppTheme._(
      id: fields[0] as String,
      themeMode: fields[1] as ThemeMode,
      colorScheme: fields[2] as ColorScheme,
      scaffoldBackgroundColor: fields[3] as Color,
      buttonThemeData: fields[4] as ButtonThemeData,
      brightness: fields[5] as Brightness,
      accentColorBrightness: fields[6] as Brightness,
      primaryColor: fields[7] as Color,
      buttonColor: fields[8] as Color,
      indicatorColor: fields[9] as Color,
      primaryColorDark: fields[10] as Color,
      primaryColorLight: fields[11] as Color,
      toggleableActiveColor: fields[12] as Color,
      accentColor: fields[13] as Color,
      splashColor: fields[14] as Color,
      splashFactory: fields[15] as InteractiveInkFeatureFactory,
      visualDensity: fields[16] as VisualDensity,
      textTheme: fields[17] as TextTheme,
      bottomNavigationBarTheme: fields[18] as BottomNavigationBarThemeData,
      inputTheme: fields[19] as InputDecorationTheme,
      bottomSheetThemeData: fields[20] as BottomSheetThemeData,
      radioThemeData: fields[21] as RadioThemeData,
      switchThemeData: fields[22] as SwitchThemeData,
      textSelectionThemeData: fields[23] as TextSelectionThemeData,
    );
  }

  @override
  void write(BinaryWriter writer, AppTheme obj) {
    writer
      ..writeByte(24)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.themeMode)
      ..writeByte(2)
      ..write(obj._colorScheme)
      ..writeByte(3)
      ..write(obj._scaffoldBackgroundColor)
      ..writeByte(4)
      ..write(obj._buttonThemeData)
      ..writeByte(5)
      ..write(obj._brightness)
      ..writeByte(6)
      ..write(obj._accentColorBrightness)
      ..writeByte(7)
      ..write(obj._primaryColor)
      ..writeByte(8)
      ..write(obj._buttonColor)
      ..writeByte(9)
      ..write(obj._indicatorColor)
      ..writeByte(10)
      ..write(obj._primaryColorDark)
      ..writeByte(11)
      ..write(obj._primaryColorLight)
      ..writeByte(12)
      ..write(obj._toggleableActiveColor)
      ..writeByte(13)
      ..write(obj._accentColor)
      ..writeByte(14)
      ..write(obj._splashColor)
      ..writeByte(15)
      ..write(obj._splashFactory)
      ..writeByte(16)
      ..write(obj._visualDensity)
      ..writeByte(17)
      ..write(obj._textTheme)
      ..writeByte(18)
      ..write(obj._bottomNavigationBarTheme)
      ..writeByte(19)
      ..write(obj._textFieldTheme)
      ..writeByte(20)
      ..write(obj._bottomSheetThemeData)
      ..writeByte(21)
      ..write(obj._radioThemeData)
      ..writeByte(22)
      ..write(obj._switchThemeData)
      ..writeByte(23)
      ..write(obj._textSelectionThemeData);
  }
}
