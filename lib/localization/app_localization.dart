import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppLocalization {
  static AppLocalization of(BuildContext context) {
    return Localizations.of(context, AppLocalization);
  }

  ///
  /// We have only farsi language
  static const supportedLocales = [
    Locale('fa'),
  ];

  ///
  /// Localization list
  static const localizationsDelegates = [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  ///
  /// When the application grow should use json file instead of [_strings]
  static const _strings = <String, String>{
    "splashText": "ابر خودرو ابر کوه",
    "loginOrRegister": "ورود / ثبت نام",
    "inputOtpCode": "کد تایید را وارد کنید",
    "inputYourPhoneNumber": "شماره تلفن خود را وارد کنید",
    "editPhoneNumber": "اصلاح شماره",
    "giveOtpCode": "دریافت کد تایید",
    "confirm": "تایید",
    "close": "بستن",
    "notFoundChat": "هنوز پیامی ارسال نکردی",
    "enterTitle": "عنوان چت را وارد کنید",
    "editTitle": "تغییر عنوان",
    "addChat": "ایجاد چت",
    "pleaseSendMessage": "یه پیام ارسال کن",
    "pleaseEnterYourMessage": "پیام خود را بنویسید...",

    ///
    /// Remote Errors
    "invalidPhoneNumberFormat": "شماره وارد شده اشتباه است",
    "pleaseUpdateYourApplication": "لطفا اپلیکیشن خود را به روز رسانی کنید",
    "nowAllowedError": "شما اجازه دسترسی به این بخش را ندارید",
    "invalidOtpCode": "کد تایید معتبر نمی باشد",
    "errorOnFetchingDataTryAgain":
        "در دریافت داده مشکل پیش آمده لطفا مجددا سعی کنید",
    "errorOnCreateChatTryAgain":
        "در ایجاد چت مشکل پیش آمده لطفا مجددا سعی کنید",
    "errorOnEditChatTryAgain": "در ویرایش چت مشکل پیش آمده لطفا مجددا سعی کنید",
    "errorOnSendingMessage": "متاسفانه پیام ارسال نشد",

    ///
    /// Server Error
    "invalidResponse": "پاسخ سرور نامعتبر است",
    "internalServerError": "سرور دچار مشکل شده لطفا دقایقی دیگر سعی کنید",
    "maintainServerError": "سرور در دست تعمیر است از شکیبایی شما متشکریم",
  };

  // If string for "label" does not exist, will show "[لیبل]"
  static String _get(String label) => _strings[label] ?? '[لیبل]';

  static String get splashText => _get('splashText');
  static String get loginOrRegister => _get('loginOrRegister');
  static String get giveOtpCode => _get('giveOtpCode');
  static String get enterTitle => _get('enterTitle');
  static String get editTitle => _get('editTitle');
  static String get addChat => _get('addChat');
  static String get confirm => _get('confirm');
  static String get close => _get('close');
  static String get inputYourPhoneNumber => _get('inputYourPhoneNumber');
  static String get editPhoneNumber => _get('editPhoneNumber');
  static String get inputOtpCode => _get('inputOtpCode');
  static String get pleaseEnterYourMessage => _get('pleaseEnterYourMessage');
  static String get pleaseSendMessage => _get('pleaseSendMessage');
  static String get notFoundChat => _get('notFoundChat');

  /// Errors
  static String get invalidPhoneNumberFormat =>
      _get("invalidPhoneNumberFormat");
  static String get pleaseUpdateYourApplication =>
      _get("pleaseUpdateYourApplication");
  static String get nowAllowedError => _get("nowAllowedError");
  static String get invalidOtpCode => _get("invalidOtpCode");
  static String get errorOnFetchingDataTryAgain =>
      _get("errorOnFetchingDataTryAgain");

  static String get errorOnCreateChatTryAgain =>
      _get('errorOnCreateChatTryAgain');
  static String get errorOnEditChatTryAgain => _get('errorOnEditChatTryAgain');
  static String get errorOnSendingMessage => _get('errorOnSendingMessage');
  static String get invalidResponse => _get('invalidResponse');
  static String get internalServerError => _get('internalServerError');
  static String get maintainServerError => _get('maintainServerError');
}
