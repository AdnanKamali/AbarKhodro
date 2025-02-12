import 'package:abarkhodro_application/UI/common/widgets/dialog_widget.dart';
import 'package:abarkhodro_application/UI/controllers/aut_cubit/auth_cubit.dart';
import 'package:abarkhodro_application/UI/controllers/theme_mode_cubit/theme_mode_cubit.dart';
import 'package:abarkhodro_application/routing/routes.dart';
import 'package:abarkhodro_application/utils/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

AppBar defaultAppBar(BuildContext context,
    {Widget? title, List<Widget>? actions}) {
  final authCubit = context.read<AuthCubit>();
  final themeModeCubit = context.read<ThemeModeCubit>();
  return AppBar(
    title: title,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    elevation: 0,
    actions: [
      BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
        return state.maybeWhen(
          orElse: () => SizedBox(),
          authenticated: (refreshToken) => IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => DialogWidget(
                    title: "آیا مایل به خروج هستید؟",
                    onConfirm: () {
                      authCubit.logout(refreshToken);
                      ctx.pop();
                      context.go(Routes.splash.path);
                    },
                    onConfirmText: "بله",
                    onCloseText: "خیر",
                    onConfirmButtonColor: AppColor.red1,
                  ),
                );
              },
              icon: Icon(
                Icons.power_settings_new_outlined,
                color: AppColor.red1,
              )),
        );
      }),
      BlocBuilder<ThemeModeCubit, ThemeModeState>(
        builder: (context, state) {
          Icon _themeIcon = state.when(
            darkMode: () => Icon(Icons.dark_mode_outlined),
            lightMode: () => Icon(Icons.light_mode_outlined),
          );
          return IconButton(
            icon: _themeIcon,
            onPressed: () => themeModeCubit.changeThemeMode(),
            color: AppColor.grey1,
          );
        },
      ),
      if (actions != null) ...actions,
    ],
  );
}
