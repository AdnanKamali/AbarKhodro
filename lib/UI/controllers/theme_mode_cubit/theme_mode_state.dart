part of 'theme_mode_cubit.dart';

@freezed
class ThemeModeState with _$ThemeModeState {
  const factory ThemeModeState.darkMode() = _DarkMode;
  const factory ThemeModeState.lightMode() = _LightMode;
}
