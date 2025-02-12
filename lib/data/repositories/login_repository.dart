import 'package:abarkhodro_application/data/models/token_model/token_model.dart';
import 'package:abarkhodro_application/data/repositories/repository_interface.dart';
import 'package:abarkhodro_application/data/service/local/shared_preferences_instance.dart';
import 'package:abarkhodro_application/data/service/remote/auth/auth_remote_service.dart';
import 'package:abarkhodro_application/localization/app_localization.dart';

class SendPhoneNumberRepository
    extends IRepository<void, Map<String, dynamic>> {
  final AuthRemoteService authRemoteService;

  SendPhoneNumberRepository({
    required this.authRemoteService,
  });

  @override
  Future<void> getDataRemoteServer({
    required Map<String, dynamic> para,
    String? token,
  }) async {
    await authRemoteService.sendLoginSignal(para);
  }

  @override
  String get error400CustomMessage => AppLocalization.invalidPhoneNumberFormat;

  @override
  String get error401CustomMessage => AppLocalization.invalidPhoneNumberFormat;

  @override
  String get error403CustomMessage => AppLocalization.invalidPhoneNumberFormat;
}

class SendOTPCodeRepository
    extends IRepository<LoginTokenModel, Map<String, dynamic>> {
  final AuthRemoteService authRemoteService;
  final SharedPreferencesService sharedPreferencesService;
  SendOTPCodeRepository({
    required this.authRemoteService,
    required this.sharedPreferencesService,
  });

  @override
  Future<LoginTokenModel> getDataRemoteServer(
      {required Map<String, dynamic> para, String? token}) async {
    final response = await authRemoteService.sendLoginSignal(para);
    if (response != null) {
      sharedPreferencesService.saveRefreshToken(response.refresh);
    }
    return response!;
  }

  @override
  String get error400CustomMessage => AppLocalization.invalidOtpCode;

  @override
  String get error401CustomMessage => AppLocalization.invalidOtpCode;

  @override
  String get error403CustomMessage => AppLocalization.invalidOtpCode;

  @override
  String get error404CustomMessage => AppLocalization.invalidOtpCode;
}
