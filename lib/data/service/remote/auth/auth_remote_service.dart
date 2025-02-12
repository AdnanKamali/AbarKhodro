import 'package:abarkhodro_application/data/models/token_model/token_model.dart';
import 'package:abarkhodro_application/utils/constants.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'auth_remote_service.g.dart';

@RestApi(baseUrl: UrlConstants.authUrl)
abstract class AuthRemoteService {
  factory AuthRemoteService(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _AuthRemoteService;

  @POST("/")
  Future<LoginTokenModel?> sendLoginSignal(@Body() Map<String, dynamic> body);
  @POST("/logout/")
  Future<void> logout(@Body() Map<String, dynamic> body);
  @POST("/token/refresh/")
  Future<LoginTokenModel> refreshToken(@Body() Map<String, dynamic> body);
  @POST("/token/verify/")
  Future<void> verifyToken(@Body() Map<String, dynamic> body);
}
