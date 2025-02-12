import 'package:abarkhodro_application/data/service/local/shared_preferences_instance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_mode_state.dart';
part 'theme_mode_cubit.freezed.dart';

class ThemeModeCubit extends Cubit<ThemeModeState> {
  final SharedPreferencesService sharedPreferencesService;
  ThemeModeCubit({required this.sharedPreferencesService})
      : super(ThemeModeState.darkMode());

  void initialTheme() async {
    final themeMode = await sharedPreferencesService.fetchThemeMode();
    if (themeMode == ThemeMode.dark) {
      emit(ThemeModeState.darkMode());
    } else {
      emit(ThemeModeState.lightMode());
    }
  }

  void _changeThemeModeToDark() {
    sharedPreferencesService.saveThemeMode(ThemeMode.dark);
    emit(ThemeModeState.darkMode());
  }

  void _changeThemeModeToLight() {
    sharedPreferencesService.saveThemeMode(ThemeMode.light);
    emit(ThemeModeState.lightMode());
  }

  void changeThemeMode() {
    if (state is _DarkMode) {
      _changeThemeModeToLight();
    } else {
      _changeThemeModeToDark();
    }
  }
}
