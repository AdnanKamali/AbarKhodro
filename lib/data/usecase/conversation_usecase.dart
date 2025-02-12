import 'package:abarkhodro_application/data/models/conversation_model/conversation_model.dart';
import 'package:abarkhodro_application/data/models/pagination_model/pagination_model.dart';
import 'package:abarkhodro_application/data/repositories/conversation_repository.dart';
import 'package:abarkhodro_application/data/service/remote/conversation/conversation_remote_service.dart';
import 'package:abarkhodro_application/utils/response.dart';
import 'package:dartz/dartz.dart';

class ConversationUsecase {
  final ConversationRemoteService conversationRemoteService;

  late GetConversationMessages getConversationMessagesRepo;
  late GetConversationList getConversationListRepo;
  late CreateConversation createConversationRepo;
  late UpdateConversation updateConversationRepo;

  ConversationUsecase({required this.conversationRemoteService}) {
    getConversationMessagesRepo = GetConversationMessages(
      conversationRemoteService: conversationRemoteService,
    );
    getConversationListRepo = GetConversationList(
      conversationRemoteService: conversationRemoteService,
    );

    createConversationRepo = CreateConversation(
      conversationRemoteService: conversationRemoteService,
    );
    updateConversationRepo = UpdateConversation(
      conversationRemoteService: conversationRemoteService,
    );
  }

  Future<Either<FailureResponse, SuccessResponse<ConversationModel>>>
      getConversationMessages({
    required ConversationModel conversationModel,
  }) async {
    final para = conversationModel.id!;
    return await getConversationMessagesRepo.onRequest(para: para);
  }

  Future<Either<FailureResponse, SuccessResponse<ConversationModel>>>
      createConversation({
    required ConversationModel conversationModel,
  }) async {
    final para = conversationModel.toJson();
    return await createConversationRepo.onRequest(para: para);
  }

  Future<Either<FailureResponse, SuccessResponse<ConversationModel>>>
      updateConversation({
    required ConversationModel conversationModel,
  }) async {
    final para = conversationModel.toJson();
    return await updateConversationRepo.onRequest(para: para);
  }

  Future<
          Either<FailureResponse,
              SuccessResponse<PaginationModel<ConversationModel>>>>
      getConversationList({
    required int page,
  }) async {
    final para = page;
    return await getConversationListRepo.onRequest(para: para);
  }
}
