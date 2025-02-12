part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;
  const factory LoginEvent.sendPhoneNumber({required String phoneNumber}) =
      _SendPhoneNumber;
  const factory LoginEvent.sendOtpCode({required String otpCode}) =
      _SendOtpCode;
}
