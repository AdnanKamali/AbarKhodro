import 'package:flutter/material.dart';

class Constants {
  static const loginContainerSize = 500.0;
  static const n6 = 6.0;
  static const n8 = 8.0;
  static const n10 = 10.0;
  static const n12 = 12.0;
  static const n16 = 16.0;
  static const n18 = 18.0;
  static const n20 = 20.0;
  static const n24 = 24.0;
}

class StringConstants {
  static const accessTokenKey = "accessToken";
  static const tokenPrefix = "Bearer";
}

class EdgeInsetsConstants {
  static const pA16 = EdgeInsets.all(Constants.n16);
  static const pA10 = EdgeInsets.all(Constants.n10);
}

class UrlConstants {
  static const baseUrl = "https://abk-task.chbk.app/";
  static const authUrl = "${baseUrl}auth/";
  static const conversationsUrl = "${baseUrl}conversations/";
}
