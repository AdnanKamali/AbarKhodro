part of 'conversation_bloc.dart';

@freezed
class ConversationState with _$ConversationState {
  const factory ConversationState.initial() = _Initial;
  const factory ConversationState.loading() = _Loading;
  const factory ConversationState.loadingForNext() = _LoadingForNext;
  const factory ConversationState.gotList({
    required List<ConversationModel> paginationConversationList,
  }) = _GotList;
  const factory ConversationState.error({
    required FailureResponse failure,
  }) = _Error;
}
