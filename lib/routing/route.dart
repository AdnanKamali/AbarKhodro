import 'package:abarkhodro_application/UI/controllers/aut_cubit/auth_cubit.dart';
import 'package:abarkhodro_application/UI/controllers/chat_bloc/chat_bloc.dart';
import 'package:abarkhodro_application/UI/controllers/conversation_bloc/conversation_bloc.dart';
import 'package:abarkhodro_application/UI/screens/home/split_screen.dart';
import 'package:abarkhodro_application/UI/screens/login/login_screen.dart';
import 'package:abarkhodro_application/UI/screens/splash/splash_screen.dart';
import 'package:abarkhodro_application/data/usecase/conversation_usecase.dart';
import 'package:abarkhodro_application/data/usecase/message_usecase.dart';
import 'package:abarkhodro_application/injection.dart';
import 'package:abarkhodro_application/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

GoRouter router() => GoRouter(
      initialLocation: Routes.splash.path,
      redirect: _redirect,
      routes: [
        GoRoute(
          name: Routes.login.name,
          path: Routes.login.path,
          builder: (context, state) {
            return LoginScreen();
          },
        ),
        GoRoute(
          name: Routes.splash.name,
          path: Routes.splash.path,
          builder: (context, state) {
            return SplashScreen();
          },
        ),
        GoRoute(
          name: Routes.home.name,
          path: Routes.home.path,
          builder: (context, state) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => ConversationBloc(
                      conversationUsecase: sl<ConversationUsecase>()),
                ),
                BlocProvider(
                  create: (context) =>
                      ChatBloc(messageUsecase: sl<MessageUsecase>()),
                )
              ],
              child: SplitScreen(),
            );
          },
        ),
      ],
    );

// From https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/redirection.dart
Future<String?> _redirect(BuildContext context, GoRouterState state) async {
  // if the user is not logged in, they need to login
  final loginBloc = context.read<AuthCubit>();
  return loginBloc.state.when(
    initial: () => Routes.splash.path,
    logout: () => Routes.login.path,
    authenticated: (_) => null,
  );
}
