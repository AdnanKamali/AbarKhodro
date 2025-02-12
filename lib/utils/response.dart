import 'package:abarkhodro_application/localization/app_localization.dart';

abstract class IResponse {
  final int statusCode;
  const IResponse({required this.statusCode});
}

class FailureResponse extends IResponse {
  const FailureResponse({
    required this.errorMessage,
    required super.statusCode,
  });
  final String errorMessage;
}

class SuccessResponse<T> extends IResponse {
  SuccessResponse({required this.result, super.statusCode = 200});
  final T result;
}

class ResponseStatusCode {
  ///
  /// Success Codes
  static const successCode = 200;
  static const successCreateCode = 201;

  ///
  /// User Error Request Code
  static const badRequestCode = 400;
  static const unAuthorizedCode = 401;
  static const forbiddenCode = 403;
  static const notFoundCode = 404;
  static const notAllowedMethodCode = 405;

  ///
  /// Server Error Request Code
  static const internalServerErrorCode = 500;
  static const invalidResponseServerCode = 502;
  static const maintainServerErrorCode = 503;
}

///
/// Default Server Error Response
class ServerErrorFailureResponse {
  static final internalServerErrorFailure = FailureResponse(
    errorMessage: AppLocalization.internalServerError,
    statusCode: ResponseStatusCode.internalServerErrorCode,
  );

  static final maintainServerErrorFailure = FailureResponse(
    errorMessage: AppLocalization.maintainServerError,
    statusCode: ResponseStatusCode.maintainServerErrorCode,
  );

  static final invalidServerResponseErrorFailure = FailureResponse(
    errorMessage: AppLocalization.invalidResponse,
    statusCode: ResponseStatusCode.invalidResponseServerCode,
  );
}

FailureResponse serverFailureFactory(int statusCode) {
  switch (statusCode) {
    case ResponseStatusCode.internalServerErrorCode:
      return ServerErrorFailureResponse.internalServerErrorFailure;
    case ResponseStatusCode.maintainServerErrorCode:
      return ServerErrorFailureResponse.maintainServerErrorFailure;
    case ResponseStatusCode.invalidResponseServerCode:
      return ServerErrorFailureResponse.invalidServerResponseErrorFailure;
    default:
      return ServerErrorFailureResponse.maintainServerErrorFailure;
  }
}

class SharedPreferencesSaveException implements Exception {}
