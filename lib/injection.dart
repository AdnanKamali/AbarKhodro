import 'package:abarkhodro_application/data/repositories/token_repository.dart';
import 'package:abarkhodro_application/data/service/local/shared_preferences_instance.dart';
import 'package:abarkhodro_application/data/service/remote/auth/auth_remote_service.dart';
import 'package:abarkhodro_application/data/service/remote/conversation/conversation_remote_service.dart';
import 'package:abarkhodro_application/data/usecase/auth_usecase.dart';
import 'package:abarkhodro_application/data/usecase/conversation_usecase.dart';
import 'package:abarkhodro_application/data/usecase/login_usecase.dart';
import 'package:abarkhodro_application/data/usecase/message_usecase.dart';
import 'package:abarkhodro_application/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
Future<void> serviceLocator() async {
  final authDio = Dio();

  final AuthRemoteService authRemoteService = AuthRemoteService(authDio);
  final ConversationRemoteService conversationRemoteService =
      ConversationRemoteService(authDio);

  // Define empty access
  sl.registerSingleton("", instanceName: StringConstants.accessTokenKey);

  sl.registerSingleton(SharedPreferencesService());

  // Login Repository Injection
  sl.registerSingleton(
    LoginUsecase(
      authRemoteService: authRemoteService,
      sharedPreferencesService: sl<SharedPreferencesService>(),
    ),
  );

  // Token Repository Injection
  sl.registerSingleton(
    GetTokensRepository(
      authRemoteService: authRemoteService,
      sharedPreferencesService: sl<SharedPreferencesService>(),
    ),
  );

  // Conversation Usecase Injection
  sl.registerSingleton(
    ConversationUsecase(
      conversationRemoteService: conversationRemoteService,
    ),
  );

  // Message Usecase Injection
  sl.registerSingleton(
    MessageUsecase(
      conversationRemoteService: conversationRemoteService,
    ),
  );
  // Login Usecase Injection
  sl.registerSingleton(
    AuthUsecase(
      authRemoteService: authRemoteService,
      sharedPreferencesService: sl<SharedPreferencesService>(),
    ),
  );
}
