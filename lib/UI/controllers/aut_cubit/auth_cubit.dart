import 'package:abarkhodro_application/data/service/local/shared_preferences_instance.dart';
import 'package:abarkhodro_application/data/usecase/auth_usecase.dart';
import 'package:abarkhodro_application/injection.dart';
import 'package:abarkhodro_application/utils/constants.dart';
import 'package:abarkhodro_application/utils/response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.sharedPreferencesService, required this.authUsecase})
      : super(AuthState.initial());

  final AuthUsecase authUsecase;
  final SharedPreferencesService sharedPreferencesService;

  void unRegisterAccessToken() async {
    if (sl.isRegistered<String>(instanceName: StringConstants.accessTokenKey)) {
      await sl.unregister<String>(instanceName: StringConstants.accessTokenKey);
    }
  }

  void registerAccessToken(String accessToken) {
    unRegisterAccessToken();
    sl.registerSingleton<String>(
      accessToken,
      instanceName: StringConstants.accessTokenKey,
    );
  }

  void setAuthenticated(String refreshToken) {
    emit(AuthState.authenticated(refreshToken: refreshToken));
  }

  void logout(String refreshToken) async {
    await authUsecase.logout(refreshToken);

    emit(AuthState.logout());
  }

  ///
  /// [loginCheck] at first get refresh token from local
  /// if has refresh then try to get access token from server
  /// if failure then logout
  Future<void> loginCheck() async {
    emit(AuthState.initial());
    final response = await sharedPreferencesService.fetchRefreshToken();
    unRegisterAccessToken();

    response.fold(
      (l) {
        emit(AuthState.logout());
      }, // Refresh token not found in Local
      (r) async => await getAccessTokenFromServer(r.result),
    );
  }

  ///
  /// Get access token from server if failure then logout
  Future<void> getAccessTokenFromServer(String refreshToken) async {
    final response = await authUsecase.getTokens(refreshToken);
    print(response);
    response.fold(
      (l) {
        if (l.statusCode == ResponseStatusCode.unAuthorizedCode ||
            l.statusCode == ResponseStatusCode.forbiddenCode) {
          // Internal Error When User is not found in server
          logout(refreshToken);
        } else {
          emit(AuthState.authenticated(refreshToken: refreshToken));

          registerAccessToken("");
        }
      },
      (r) {
        print("OK GIVE ACCESS");
        registerAccessToken(r.result.access);
        setAuthenticated(refreshToken);
      },
    );
  }
}
