import 'package:abarkhodro_application/data/models/chat_model/chat_model.dart';
import 'package:abarkhodro_application/data/models/conversation_model/conversation_model.dart';
import 'package:abarkhodro_application/data/usecase/message_usecase.dart';
import 'package:abarkhodro_application/utils/response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  late ConversationModel conversationModel;
  final MessageUsecase messageUsecase;
  ChatBloc({required this.messageUsecase}) : super(_Initial()) {
    on<ChatEvent>((event, emit) async {
      if (event is _Started) {
        emit(_Initial());
      } else if (event is _SelectConversation) {
        emit(ChatState.loading());

        conversationModel = event.conversationModel;
        final response = await messageUsecase.getConversationMessages(
          conversationModel: event.conversationModel,
        );

        response.fold(
          (l) => emit(ChatState.error(failure: l)),
          (r) =>
              emit(ChatState.selectedConversation(conversationModel: r.result)),
        );
      } else if (event is _SendMessage) {
        emit(ChatState.loading());
        final response = await messageUsecase.sendMessage(
          conversationModel: conversationModel,
          chatModel: event.chatModel,
        );
        response.fold(
          (l) => emit(ChatState.error(failure: l)),
          (r) {
            emit(
              ChatState.selectedConversation(
                conversationModel:
                    conversationModel.copyWith(messages: r.result),
              ),
            );
          },
        );
      }
    });
  }
}
