import 'package:abarkhodro_application/UI/controllers/aut_cubit/auth_cubit.dart';
import 'package:abarkhodro_application/UI/controllers/theme_mode_cubit/theme_mode_cubit.dart';
import 'package:abarkhodro_application/data/service/local/shared_preferences_instance.dart';
import 'package:abarkhodro_application/data/usecase/auth_usecase.dart';
import 'package:abarkhodro_application/injection.dart';

import 'package:abarkhodro_application/localization/app_localization.dart';
import 'package:abarkhodro_application/routing/route.dart';

import 'package:abarkhodro_application/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  serviceLocator();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ThemeModeCubit(sharedPreferencesService: sl())..initialTheme(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(
            sharedPreferencesService: sl<SharedPreferencesService>(),
            authUsecase: sl<AuthUsecase>(),
          ),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeModeCubit, ThemeModeState>(
      builder: (_, state) {
        ThemeMode _themeMode = ThemeMode.system;
        state.when(
          darkMode: () => _themeMode = ThemeMode.dark,
          lightMode: () => _themeMode = ThemeMode.light,
        );

        return MaterialApp.router(
          title: 'سیستم تیکت ابرخودرو',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: _themeMode,
          supportedLocales: AppLocalization.supportedLocales,
          localizationsDelegates: AppLocalization.localizationsDelegates,
          routerConfig: router(),
        );
      },
    );
  }
}
