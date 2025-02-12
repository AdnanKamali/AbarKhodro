import 'package:abarkhodro_application/UI/common/widgets/error_screen.dart';
import 'package:abarkhodro_application/routing/routes.dart';
import 'package:abarkhodro_application/utils/assets.dart';
import 'package:abarkhodro_application/utils/response.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget? failureScreenHandling(
  BuildContext context, {
  required FailureResponse failureResponse,
}) {
  if (failureResponse.statusCode == ResponseStatusCode.unAuthorizedCode) {
    return ErrorScreen(
      assetLogoImage: Assets.authErrorLogo,
      errorText: "در احراز هویت شما مشکل پیش آمده لطفا مجددا وارد شوید",
      onTryText: "ورود مجدد",
      onTryPressed: () => context.go(Routes.splash.path),
    );
  } else if (failureResponse.statusCode ==
      ResponseStatusCode.maintainServerErrorCode) {
    return ErrorScreen(
      assetLogoImage: Assets.maintainErrorLogo,
      errorText: "سرور در دست تعمیر است از شکیبایی شما متشکریم",
      onTryText: "تلاش مجدد",
      onTryPressed: () => context.go(Routes.splash.path),
    );
  } else if (failureResponse.statusCode >=
      ResponseStatusCode.internalServerErrorCode) {
    return ErrorScreen(
      assetLogoImage: Assets.serverErrorLogo,
      errorText: "سرور دچار مشکل شده لفطا پس از مدتی مجددا سعی کنید",
      onTryText: "تلاش مجدد",
      onTryPressed: () => context.go(Routes.splash.path),
    );
  }
  return null;
}
