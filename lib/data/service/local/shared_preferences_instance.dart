import 'package:abarkhodro_application/utils/response.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static const _refreshTokenKey = 'REFRESH';
  static const _themeModeKey = "THEME";

  Future<void> saveThemeMode(ThemeMode themeMode) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.setString(
          _themeModeKey, themeMode == ThemeMode.dark ? "Dark" : "Light");
    } catch (e) {
      return;
    }
  }

  Future<ThemeMode> fetchThemeMode() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final themMode = sharedPreferences.getString(_themeModeKey);
      if (themMode == null) return ThemeMode.dark;
      if (themMode == "Dark") {
        return ThemeMode.dark;
      } else {
        return ThemeMode.light;
      }
    } catch (e) {
      return ThemeMode.dark;
    }
  }

  Future<Either<FailureResponse, SuccessResponse<String>>>
      fetchRefreshToken() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();

      final refreshToken = sharedPreferences.getString(_refreshTokenKey);
      if (refreshToken != null) {
        return Right(SuccessResponse(result: refreshToken));
      }
      return Left(FailureResponse(
        errorMessage: "لطفا وارد شوید",
        statusCode: ResponseStatusCode.unAuthorizedCode,
      ));
    } on Exception {
      return Left(FailureResponse(
        errorMessage: "لطفا وارد شوید",
        statusCode: ResponseStatusCode.unAuthorizedCode,
      ));
    }
  }

  Future<Either<FailureResponse, SuccessResponse<void>>> saveRefreshToken(
      String? token) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      if (token == null) {
        await sharedPreferences.remove(_refreshTokenKey);
      } else {
        await sharedPreferences.setString(_refreshTokenKey, token);
      }
      return Right(SuccessResponse(result: null));
    } on Exception {
      return Left(
        FailureResponse(
          errorMessage: "لاگین انجام نشد",
          statusCode: ResponseStatusCode.unAuthorizedCode,
        ),
      );
    }
  }
}
