import 'package:abarkhodro_application/data/models/token_model/token_model.dart';
import 'package:abarkhodro_application/data/repositories/token_repository.dart';
import 'package:abarkhodro_application/data/service/local/shared_preferences_instance.dart';
import 'package:abarkhodro_application/data/service/remote/auth/auth_remote_service.dart';
import 'package:abarkhodro_application/utils/response.dart';
import 'package:dartz/dartz.dart';

class AuthUsecase {
  late GetTokensRepository getTokensRepository;
  late LogoutRepository logoutRepository;

  final AuthRemoteService authRemoteService;
  final SharedPreferencesService sharedPreferencesService;

  AuthUsecase({
    required this.authRemoteService,
    required this.sharedPreferencesService,
  }) {
    logoutRepository = LogoutRepository(
      authRemoteService: authRemoteService,
      sharedPreferencesService: sharedPreferencesService,
    );

    getTokensRepository = GetTokensRepository(
      authRemoteService: authRemoteService,
      sharedPreferencesService: sharedPreferencesService,
    );
  }

  Future<Either<FailureResponse, SuccessResponse<LoginTokenModel>>> getTokens(
    String refreshToken,
  ) async {
    return await getTokensRepository.onRequest(para: refreshToken);
  }

  Future<Either<FailureResponse, SuccessResponse<void>>> logout(
    String refreshToken,
  ) async {
    return await logoutRepository.onRequest(para: refreshToken);
  }
}
