import 'package:abarkhodro_application/utils/constants.dart';
import 'package:abarkhodro_application/utils/theme/color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const fontFamily = "IranSansMedium";

  // Text Theme
  static const _textTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
    ),
  );

  // Input Theme
  static final _primaryBorderSide = BorderSide(
    color: AppColor.primary,
    width: 2,
  );
  static final _borderRadius = BorderRadius.circular(Constants.n6);
  static final _darkEnableOutlineInputBorder = OutlineInputBorder(
    borderSide: _primaryBorderSide.copyWith(color: AppColor.white),
    borderRadius: _borderRadius,
  );
  static final _darkBorderOutlineInputBorder = OutlineInputBorder(
    borderSide: _primaryBorderSide,
    borderRadius: _borderRadius,
  );
  static final _lightBorderOutlineInputBorder = OutlineInputBorder(
    borderSide: _primaryBorderSide.copyWith(color: AppColor.darkBackground),
    borderRadius: _borderRadius,
  );
  static final _errorBorderOutlineInputBorder = OutlineInputBorder(
    borderSide: _primaryBorderSide.copyWith(color: AppColor.red1),
    borderRadius: _borderRadius,
  );

  static final _darkInputDecoration = InputDecorationTheme(
    border: _darkBorderOutlineInputBorder,
    enabledBorder: _darkEnableOutlineInputBorder,
    focusedBorder: _darkBorderOutlineInputBorder,
    errorBorder: _errorBorderOutlineInputBorder,
    focusedErrorBorder: _errorBorderOutlineInputBorder,
    errorStyle: _textTheme.bodySmall!.copyWith(color: AppColor.red1),
    contentPadding: EdgeInsets.all(10),
  );
  static final _lightInputDecoration = InputDecorationTheme(
    border: _darkBorderOutlineInputBorder,
    enabledBorder: _lightBorderOutlineInputBorder,
    focusedBorder: _darkBorderOutlineInputBorder,
    errorBorder: _errorBorderOutlineInputBorder,
    focusedErrorBorder: _errorBorderOutlineInputBorder,
    errorStyle: _textTheme.bodySmall!.copyWith(color: AppColor.red1),
    contentPadding: EdgeInsets.all(10),
  );

  // Elevated Button Theme
  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColor.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.n6),
      ),
      textStyle: _textTheme.bodyLarge?.copyWith(color: AppColor.white),
    ),
  );

  // Outlined Button Theme
  static final _outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.n6),
      ),
      textStyle: _textTheme.bodyLarge?.copyWith(color: AppColor.white),
      side: BorderSide(color: AppColor.primary, width: 2),
    ),
  );

  // List Tile Theme
  static final _darkListTileTheme = ListTileThemeData(
    contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
    shape: Border(bottom: BorderSide()),
    tileColor: AppColor.blue10,
    titleTextStyle: _textTheme.headlineMedium?.copyWith(color: AppColor.white),
    subtitleTextStyle: _textTheme.labelSmall?.copyWith(color: AppColor.white),
  );

  static final _lightListTileTheme = _darkListTileTheme.copyWith(
    tileColor: AppColor.primary,
    shape: Border(bottom: BorderSide(color: AppColor.grey1!)),
  );

  // Snack bar Theme
  static final _lightSnackbarTheme = SnackBarThemeData(
    backgroundColor: AppColor.red1,
  );
  static final _darkSnackbarTheme = SnackBarThemeData(
    backgroundColor: AppColor.dangerColor,
  );

  // Themes
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: fontFamily,
    brightness: Brightness.light,
    colorScheme: AppColor.lightColorScheme,
    textTheme: _textTheme,
    inputDecorationTheme: _lightInputDecoration,
    elevatedButtonTheme: _elevatedButtonTheme,
    outlinedButtonTheme: _outlinedButtonTheme,
    listTileTheme: _lightListTileTheme,
    snackBarTheme: _lightSnackbarTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: fontFamily,
    brightness: Brightness.dark,
    colorScheme: AppColor.darkColorScheme,
    textTheme: _textTheme,
    inputDecorationTheme: _darkInputDecoration,
    elevatedButtonTheme: _elevatedButtonTheme,
    outlinedButtonTheme: _outlinedButtonTheme,
    listTileTheme: _darkListTileTheme,
    snackBarTheme: _darkSnackbarTheme,
  );
}
