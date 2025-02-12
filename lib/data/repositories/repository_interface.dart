import 'package:abarkhodro_application/utils/response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class IRepository<T, P> {
  Future<T> getDataRemoteServer({required P para});

  Future<Either<FailureResponse, SuccessResponse<T>>> onRequest(
      {required P para}) async {
    try {
      final response = await getDataRemoteServer(para: para);
      return Right(SuccessResponse(result: response));
    } on DioException catch (e) {
      return Left(_handelFailure(e));
    }
  }

  FailureResponse _handelFailure(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return FailureResponse(
            errorMessage: "اتصال به سرور انجام نشد، مشکل اینترنت یا کندی شبکه.",
            statusCode: -1);

      case DioExceptionType.sendTimeout:
        return FailureResponse(
            errorMessage: "ارسال داده‌ها به سرور بیش از حد طول کشید.",
            statusCode: -1);

      case DioExceptionType.receiveTimeout:
        return FailureResponse(
            errorMessage: "دریافت پاسخ از سرور بیش از حد طول کشید.",
            statusCode: -1);

      case DioExceptionType.badCertificate:
        return FailureResponse(
            errorMessage: "گواهی امنیتی سرور نامعتبر است.", statusCode: -1);

      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        if (statusCode == ResponseStatusCode.badRequestCode) {
          return FailureResponse(
            errorMessage: error400CustomMessage,
            statusCode: ResponseStatusCode.badRequestCode,
          );
        } else if (statusCode == ResponseStatusCode.unAuthorizedCode) {
          return FailureResponse(
            errorMessage: error401CustomMessage,
            statusCode: ResponseStatusCode.unAuthorizedCode,
          );
        } else if (statusCode == ResponseStatusCode.forbiddenCode) {
          return FailureResponse(
            errorMessage: error403CustomMessage,
            statusCode: ResponseStatusCode.forbiddenCode,
          );
        } else if (statusCode == ResponseStatusCode.notFoundCode) {
          return FailureResponse(
            errorMessage: error404CustomMessage,
            statusCode: ResponseStatusCode.notFoundCode,
          );
        } else if (statusCode == ResponseStatusCode.notAllowedMethodCode) {
          return FailureResponse(
            errorMessage: error405CustomMessage,
            statusCode: ResponseStatusCode.notAllowedMethodCode,
          );
        } else if (statusCode! > 500) {
          return serverFailureFactory(statusCode);
        }
        return FailureResponse(
            errorMessage:
                "پاسخ نامعتبر از سرور دریافت شد: ${e.response?.statusCode}",
            statusCode: -1);

      case DioExceptionType.cancel:
        return FailureResponse(errorMessage: "درخواست لغو شد.", statusCode: -1);

      case DioExceptionType.connectionError:
        return FailureResponse(
            errorMessage: "اتصال به اینترنت وجود ندارد.", statusCode: -1);

      case DioExceptionType.unknown:
        return FailureResponse(
            errorMessage: "خطای نامشخص: ${e.message}", statusCode: -1);
    }
  }

  String get error400CustomMessage;
  String get error401CustomMessage;
  String get error403CustomMessage;
  String get error404CustomMessage =>
      "اپلیکیشن خود را به آخرین نسخه به روز رسانی کنید";
  String get error405CustomMessage => "شما اجازه دسترسی به این بخش را ندارید";
}
