import 'package:abarkhodro_application/data/models/chat_model/chat_model.dart';
import 'package:abarkhodro_application/data/models/conversation_model/conversation_model.dart';
import 'package:abarkhodro_application/data/models/pagination_model/pagination_model.dart';
import 'package:abarkhodro_application/data/repositories/repository_interface.dart';
import 'package:abarkhodro_application/data/service/remote/conversation/conversation_remote_service.dart';
import 'package:abarkhodro_application/injection.dart';
import 'package:abarkhodro_application/localization/app_localization.dart';
import 'package:abarkhodro_application/utils/constants.dart';

class GetConversationMessages extends IRepository<ConversationModel, int> {
  GetConversationMessages({required this.conversationRemoteService});
  final ConversationRemoteService conversationRemoteService;

  ///
  /// the [para] is conversationId
  @override
  Future<ConversationModel> getDataRemoteServer({required int para}) async {
    return await conversationRemoteService.getConversationChats(
      authorizationToken,
      para,
    );
  }

  String get authorizationToken =>
      "${StringConstants.tokenPrefix} ${sl<String>(instanceName: StringConstants.accessTokenKey)}";

  @override
  String get error400CustomMessage =>
      AppLocalization.errorOnFetchingDataTryAgain;

  @override
  String get error401CustomMessage =>
      AppLocalization.errorOnFetchingDataTryAgain;

  @override
  String get error403CustomMessage =>
      AppLocalization.errorOnFetchingDataTryAgain;
}

class GetConversationList
    extends IRepository<PaginationModel<ConversationModel>, int> {
  GetConversationList({required this.conversationRemoteService});
  final ConversationRemoteService conversationRemoteService;

  ///
  /// the [para] is page for pagination
  @override
  Future<PaginationModel<ConversationModel>> getDataRemoteServer(
      {required int para}) async {
    return await conversationRemoteService.getConversations(
      authorizationToken,
      para,
    );
  }

  String get authorizationToken =>
      "${StringConstants.tokenPrefix} ${sl<String>(instanceName: StringConstants.accessTokenKey)}";

  @override
  String get error400CustomMessage =>
      AppLocalization.errorOnFetchingDataTryAgain;

  @override
  String get error401CustomMessage =>
      AppLocalization.errorOnFetchingDataTryAgain;

  @override
  String get error403CustomMessage =>
      AppLocalization.errorOnFetchingDataTryAgain;
}

class CreateConversation
    extends IRepository<ConversationModel, Map<String, dynamic>> {
  final ConversationRemoteService conversationRemoteService;
  CreateConversation({required this.conversationRemoteService});

  ///
  /// the [para] is [ConversationModel.toJson]
  @override
  Future<ConversationModel> getDataRemoteServer(
      {required Map<String, dynamic> para}) async {
    return await conversationRemoteService.createConversation(
      authorizationToken,
      para,
    );
  }

  String get authorizationToken =>
      "${StringConstants.tokenPrefix} ${sl<String>(instanceName: StringConstants.accessTokenKey)}";

  @override
  String get error400CustomMessage => AppLocalization.errorOnCreateChatTryAgain;

  @override
  String get error401CustomMessage => AppLocalization.errorOnCreateChatTryAgain;

  @override
  String get error403CustomMessage => AppLocalization.errorOnCreateChatTryAgain;
}

class UpdateConversation
    extends IRepository<ConversationModel, Map<String, dynamic>> {
  final ConversationRemoteService conversationRemoteService;
  UpdateConversation({required this.conversationRemoteService});

  ///
  /// [para] is [ConversationModel.toJson]
  @override
  Future<ConversationModel> getDataRemoteServer(
      {required Map<String, dynamic> para}) async {
    return await conversationRemoteService.updateConversationTitle(
      authorizationToken,
      para["id"],
      para,
    );
  }

  String get authorizationToken =>
      "${StringConstants.tokenPrefix} ${sl<String>(instanceName: StringConstants.accessTokenKey)}";

  @override
  String get error400CustomMessage => AppLocalization.errorOnEditChatTryAgain;

  @override
  String get error401CustomMessage => AppLocalization.errorOnEditChatTryAgain;

  @override
  String get error403CustomMessage => AppLocalization.errorOnEditChatTryAgain;
}

class SendMessage extends IRepository<List<ChatModel>, Map<String, dynamic>> {
  final ConversationRemoteService conversationRemoteService;
  SendMessage({required this.conversationRemoteService});

  ///
  /// the [para] is example like {
  ///   conversatinId: 0,
  ///   chat: [ChatModel.toJson]
  /// }
  @override
  Future<List<ChatModel>> getDataRemoteServer(
      {required Map<String, dynamic> para}) async {
    return await conversationRemoteService.createConversationChat(
      authorizationToken,
      para["conversationId"],
      para["chat"],
    );
  }

  String get authorizationToken =>
      "${StringConstants.tokenPrefix} ${sl<String>(instanceName: StringConstants.accessTokenKey)}";

  @override
  String get error400CustomMessage => AppLocalization.errorOnSendingMessage;

  @override
  String get error401CustomMessage => AppLocalization.errorOnSendingMessage;

  @override
  String get error403CustomMessage => AppLocalization.errorOnSendingMessage;
}
