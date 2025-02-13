import 'dart:async';

import 'package:abarkhodro_application/UI/controllers/aut_cubit/auth_cubit.dart';
import 'package:abarkhodro_application/localization/app_localization.dart';
import 'package:abarkhodro_application/routing/routes.dart';
import 'package:abarkhodro_application/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late StreamSubscription<AuthState> _authStateListener;
  late AuthCubit _authCubit;

  final stayOnSplashScreenDuration = Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _authCubit = context.read<AuthCubit>();
    _authStateListener = _authCubit.stream.listen(
      (event) {
        event.when(
            initial: () => null,
            authenticated: (_) => context.go(Routes.home.path),
            logout: () => context.go(Routes.login.path));
      },
    );
    _authCubit.loginCheck();
  }

  @override
  void dispose() async {
    super.dispose();
    await _authStateListener.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.logo),
            Text(
              AppLocalization.splashText,
              style: Theme.of(context).textTheme.headlineLarge,
            )
          ],
        ),
      ),
    );
  }
}
