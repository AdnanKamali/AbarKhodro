import 'package:abarkhodro_application/data/models/chat_model/chat_model.dart';
import 'package:abarkhodro_application/data/models/conversation_model/conversation_model.dart';
import 'package:abarkhodro_application/data/repositories/conversation_repository.dart';
import 'package:abarkhodro_application/data/service/remote/conversation/conversation_remote_service.dart';
import 'package:abarkhodro_application/utils/response.dart';
import 'package:dartz/dartz.dart';

class MessageUsecase {
  final ConversationRemoteService conversationRemoteService;
  late GetConversationMessages getConversationMessagesRepo;

  late SendMessage sendMessageRepo;
  MessageUsecase({required this.conversationRemoteService}) {
    sendMessageRepo = SendMessage(
      conversationRemoteService: conversationRemoteService,
    );

    getConversationMessagesRepo = GetConversationMessages(
      conversationRemoteService: conversationRemoteService,
    );
  }

  Future<Either<FailureResponse, SuccessResponse<List<ChatModel>>>>
      sendMessage({
    required ConversationModel conversationModel,
    required ChatModel chatModel,
  }) async {
    final para = {
      "conversationId": conversationModel.id,
      "chat": chatModel.toJson(),
    };
    return await sendMessageRepo.onRequest(para: para);
  }

  Future<Either<FailureResponse, SuccessResponse<ConversationModel>>>
      getConversationMessages({
    required ConversationModel conversationModel,
  }) async {
    final para = conversationModel.id!;
    return await getConversationMessagesRepo.onRequest(para: para);
  }
}
