import 'package:flutter/material.dart';

class AppColor {
  static const primary = Color(0xFF818CF8);
  static const dangerColor = Colors.amberAccent;
  static const blue10 = Color.fromRGBO(59, 130, 246, 0.1);
  static const darkBackground = Color(0xFF18181B);
  static const white = Colors.white;
  static const white1 = Color.fromRGBO(100, 100, 255, 0.05);
  static final grey1 = Colors.grey[300];
  static const blue = Colors.blue;
  static const red1 = Color(0xFFEF4444);

  ///
  /// Light theme color
  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: white,
    secondary: primary,
    onSecondary: white,
    error: white,
    onError: red1,
    surface: white,
    onSurface: darkBackground,
  );

  ///
  /// Dark theme color
  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: white,
    onPrimary: primary,
    secondary: white,
    onSecondary: primary,
    error: white,
    onError: red1,
    surface: darkBackground,
    onSurface: white,
  );
}
