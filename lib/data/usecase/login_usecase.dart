import 'package:abarkhodro_application/data/models/token_model/token_model.dart';
import 'package:abarkhodro_application/data/repositories/login_repository.dart';
import 'package:abarkhodro_application/data/service/local/shared_preferences_instance.dart';
import 'package:abarkhodro_application/data/service/remote/auth/auth_remote_service.dart';
import 'package:abarkhodro_application/utils/formating_phone_number.dart';
import 'package:abarkhodro_application/utils/response.dart';
import 'package:dartz/dartz.dart';

class LoginUsecase {
  final AuthRemoteService authRemoteService;
  late SharedPreferencesService sharedPreferencesService;

  late SendPhoneNumberRepository sendPhoneNumberRepository;
  late SendOTPCodeRepository sendOTPCodeRepository;
  LoginUsecase(
      {required this.sharedPreferencesService,
      required this.authRemoteService}) {
    sendPhoneNumberRepository = SendPhoneNumberRepository(
      authRemoteService: authRemoteService,
    );

    sendOTPCodeRepository = SendOTPCodeRepository(
      authRemoteService: authRemoteService,
      sharedPreferencesService: sharedPreferencesService,
    );
  }

  Future<Either<FailureResponse, SuccessResponse<void>>> sendPhoneNumber(
      {required phoneNumber}) async {
    final para = {"phone_number": fromattingPhoneNumber(phoneNumber)};
    return await sendPhoneNumberRepository.onRequest(para: para);
  }

  Future<Either<FailureResponse, SuccessResponse<LoginTokenModel>>> sendOtpCode(
      {required String phoneNumber, required String code}) async {
    final para = {
      "phone_number": fromattingPhoneNumber(phoneNumber),
      "code": code
    };
    return await sendOTPCodeRepository.onRequest(para: para);
  }
}
