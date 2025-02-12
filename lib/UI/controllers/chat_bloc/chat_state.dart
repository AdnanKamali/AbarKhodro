part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading() = _Loading;
  const factory ChatState.selectedConversation(
      {required ConversationModel conversationModel}) = _SelectedConversation;
  const factory ChatState.error({required FailureResponse failure}) = _Error;
}
