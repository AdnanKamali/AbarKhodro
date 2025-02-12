part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;
  const factory ChatEvent.selectConversation(
      {required ConversationModel conversationModel}) = _SelectConversation;
  const factory ChatEvent.sendMessage({required ChatModel chatModel}) =
      _SendMessage;
}
