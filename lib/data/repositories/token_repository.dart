import 'package:abarkhodro_application/data/models/token_model/token_model.dart';
import 'package:abarkhodro_application/data/repositories/repository_interface.dart';
import 'package:abarkhodro_application/data/service/local/shared_preferences_instance.dart';
import 'package:abarkhodro_application/data/service/remote/auth/auth_remote_service.dart';

class GetTokensRepository extends IRepository<LoginTokenModel, String> {
  final AuthRemoteService authRemoteService;
  final SharedPreferencesService sharedPreferencesService;
  GetTokensRepository({
    required this.authRemoteService,
    required this.sharedPreferencesService,
  });

  @override
  Future<LoginTokenModel> getDataRemoteServer({
    required String para,
    String? token,
  }) async {
    final response = await authRemoteService.refreshToken({"refresh": para});
    sharedPreferencesService.saveRefreshToken(response.refresh);
    return response;
  }

  final wrongAuthMessage = "احراز هویت شما دچار مشکل شده...";

  @override
  String get error400CustomMessage => wrongAuthMessage;

  @override
  String get error401CustomMessage => wrongAuthMessage;

  @override
  String get error403CustomMessage => wrongAuthMessage;
}

class LogoutRepository extends IRepository<void, String> {
  final AuthRemoteService authRemoteService;
  final SharedPreferencesService sharedPreferencesService;

  LogoutRepository({
    required this.authRemoteService,
    required this.sharedPreferencesService,
  });

  @override
  Future<void> getDataRemoteServer({
    required String para,
    String? token,
  }) async {
    sharedPreferencesService.saveRefreshToken(null);
    final response = await authRemoteService.logout({"refresh": para});
    return response;
  }

  @override
  String get error400CustomMessage => "";

  @override
  String get error401CustomMessage => "";

  @override
  String get error403CustomMessage => "";

  @override
  String get error404CustomMessage => "";

  @override
  String get error405CustomMessage => "";
}
