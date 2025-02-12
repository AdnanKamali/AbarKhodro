part of 'conversation_bloc.dart';

@freezed
class ConversationEvent with _$ConversationEvent {
  const factory ConversationEvent.started() = _Started;
  const factory ConversationEvent.getListPagination() = _GetListPagination;
  const factory ConversationEvent.getNextPage() = _GetNextPage;
  const factory ConversationEvent.create(
      {required ConversationModel conversationModel}) = _Create;
  const factory ConversationEvent.update(
      {required ConversationModel conversationModel}) = _Update;
}
