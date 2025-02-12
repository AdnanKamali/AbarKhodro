import 'package:abarkhodro_application/data/models/conversation_model/conversation_model.dart';
import 'package:abarkhodro_application/data/usecase/conversation_usecase.dart';
import 'package:abarkhodro_application/utils/response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_event.dart';
part 'conversation_state.dart';
part 'conversation_bloc.freezed.dart';

class ConversationBloc extends Bloc<ConversationEvent, ConversationState> {
  final ConversationUsecase conversationUsecase;
  int? conversationPage = 1;
  final List<ConversationModel> conversationList = [];

  ConversationBloc({required this.conversationUsecase}) : super(_Initial()) {
    on<ConversationEvent>((event, emit) async {
      if (event is _Started) {
        emit(_Initial());
      }
      if (event is _GetListPagination) {
        emit(ConversationState.loading());
        final response = await conversationUsecase.getConversationList(
            page: conversationPage!);
        response.fold(
          (l) => emit(ConversationState.error(failure: l)),
          (r) {
            if (r.result.next != null) {
              conversationPage = conversationPage! + 1;
            } else {
              conversationPage = null;
            }
            conversationList.addAll(r.result.results);
            emit(
              ConversationState.gotList(
                paginationConversationList: conversationList,
              ),
            );
          },
        );
      } else if (event is _GetNextPage) {
        if (conversationPage != null) {
          emit(ConversationState.loadingForNext());
          final response = await conversationUsecase.getConversationList(
              page: conversationPage!);

          response.fold(
            (l) => emit(ConversationState.error(failure: l)),
            (r) async {
              if (r.result.next != null) {
                conversationPage = conversationPage! + 1;
              } else {
                conversationPage = null;
              }
              conversationList.addAll(r.result.results);
              await Future.delayed(Duration(seconds: 2));
              emit(
                ConversationState.gotList(
                  paginationConversationList: conversationList,
                ),
              );
            },
          );
        }
      } else if (event is _Create) {
        final response = await conversationUsecase.createConversation(
          conversationModel: event.conversationModel,
        );
        response.fold(
          (l) => emit(ConversationState.error(failure: l)),
          (r) {
            conversationList.add(r.result);

            emit(ConversationState.loading());
            emit(
              ConversationState.gotList(
                  paginationConversationList: conversationList),
            );
          },
        );
      } else if (event is _Update) {
        final index = conversationList.indexWhere(
          (element) => element.id == event.conversationModel.id,
        );

        final response = await conversationUsecase.updateConversation(
          conversationModel: event.conversationModel,
        );
        response.fold(
          (l) => emit(ConversationState.error(failure: l)),
          (r) {
            conversationList[index] = r.result;
            emit(ConversationState.loading());
            emit(ConversationState.gotList(
                paginationConversationList: conversationList));
          },
        );
      }
    });
  }
}
