abstract class Validation {
  static bool lengthValidation(String text,
      {required int min, required int max}) {
    return text.length <= max && text.length >= min;
  }

  static bool onlyNumberValidation(String text) {
    return RegExp(r'^\d+$').hasMatch(text);
  }

  ///
  /// this validation in String only use (number, underline, char)
  static bool textValidation(String text) {
    return RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(text);
  }
}

String? phoneNumberValidator(String? text) {
  if (text == null || text.isEmpty) {
    return "لطفا شماره خود را وارد کنید";
  } else if (!Validation.onlyNumberValidation(text)) {
    return "شماره فقط شامل عدد است";
  } else if (text.startsWith("09") &&
      !Validation.lengthValidation(text, min: 11, max: 11)) {
    return "شماره باید 11 رقم باشد";
  } else if (!text.startsWith("09") &&
      !Validation.lengthValidation(text, min: 11, max: 11)) {
    return "شماره با 09 شروع می شود";
  }
  return null;
}

String? otpCodeValidator(String? text) {
  if (text == null || text.isEmpty) {
    return "لطفا کد تایید را وارد کنید";
  } else if (!Validation.onlyNumberValidation(text)) {
    return "کد تایید فقط شامل عدد است";
  } else if (!Validation.lengthValidation(text, min: 6, max: 6)) {
    return "کد تایید باید 6 رقم باشد";
  }
  return null;
}
