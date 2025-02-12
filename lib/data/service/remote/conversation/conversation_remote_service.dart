import 'package:abarkhodro_application/data/models/chat_model/chat_model.dart';
import 'package:abarkhodro_application/data/models/conversation_model/conversation_model.dart';
import 'package:abarkhodro_application/data/models/pagination_model/pagination_model.dart';
import 'package:abarkhodro_application/utils/constants.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'conversation_remote_service.g.dart';

@RestApi(baseUrl: UrlConstants.conversationsUrl)
abstract class ConversationRemoteService {
  factory ConversationRemoteService(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ConversationRemoteService;

  @GET("/")
  Future<PaginationModel<ConversationModel>> getConversations(
    @Header('Authorization') String token,
    @Query('page') int page,
  );

  @POST("/")
  Future<ConversationModel> createConversation(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );

  @GET("/{conversationId}/")
  Future<ConversationModel> getConversationChats(
    @Header('Authorization') String token,
    @Path("conversationId") int conversationId,
  );

  @PUT("/{conversationId}/")
  Future<ConversationModel> updateConversationTitle(
    @Header('Authorization') String token,
    @Path("conversationId") int conversationId,
    @Body() Map<String, dynamic> body,
  );

  @POST("/{conversationId}/messages/")
  Future<List<ChatModel>> createConversationChat(
    @Header('Authorization') String token,
    @Path("conversationId") int conversationId,
    @Body() Map<String, dynamic> body,
  );
}
