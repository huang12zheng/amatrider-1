import 'package:amatrider/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:amatrider/manager/theme/theme.dart';

@injectable
class ThemeCubit extends HydratedCubit<AppTheme> {
  static const String _THEME_KEY = '${Const.appName}-style';
  static const String _THEME_MODE_KEY = '${Const.appName}-theme-mode';

  ThemeCubit() : super(AppTheme.light());

  bool get isDarkMode => state.id == DARK_THEME_ID ? true : false;

  /// Toggles Application theme from Light Mode to Dark Mode
  void toggleTheme() =>
      emit(state.id == LIGHT_THEME_ID ? AppTheme.dark() : AppTheme.light());

  void themeMode() {}

  @override
  AppTheme fromJson(Map<String, dynamic> json) {
    final type = json[_THEME_KEY] as String;
    final themeModeIndex = json[_THEME_MODE_KEY] as int;
    
    switch (type) {
      case LIGHT_THEME_ID:
        return AppTheme.light()
            .copyWith(themeMode: ThemeMode.values.elementAt(themeModeIndex));
      case DARK_THEME_ID:
        return AppTheme.dark()
            .copyWith(themeMode: ThemeMode.values.elementAt(themeModeIndex));
      default:
        return AppTheme.light()
            .copyWith(themeMode: ThemeMode.values.elementAt(themeModeIndex));
    }
  }

  @override
  Map<String, dynamic> toJson(AppTheme state) => {
        _THEME_KEY: state.id,
        _THEME_MODE_KEY: state.themeMode.index,
      };
}
