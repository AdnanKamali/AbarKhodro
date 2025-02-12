import 'package:abarkhodro_application/UI/common/helpers/snack_bar.dart';
import 'package:abarkhodro_application/UI/common/widgets/error_screen.dart';
import 'package:abarkhodro_application/UI/controllers/aut_cubit/auth_cubit.dart';
import 'package:abarkhodro_application/UI/controllers/conversation_bloc/conversation_bloc.dart';
import 'package:abarkhodro_application/UI/screens/conversations/helpers/add_or_edit_conversation_dialog.dart';
import 'package:abarkhodro_application/UI/screens/conversations/widgets/chat_list_view.dart';

import 'package:abarkhodro_application/data/models/conversation_model/conversation_model.dart';
import 'package:abarkhodro_application/utils/assets.dart';
import 'package:abarkhodro_application/utils/failure_handling.dart';
import 'package:abarkhodro_application/utils/response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class ConversationWidget extends StatelessWidget {
  ConversationWidget({super.key});

  Widget? errorScreen;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final conversationBloc = context.read<ConversationBloc>();

    final List<ConversationModel> conversationList = [];
    return BlocBuilder<ConversationBloc, ConversationState>(
      builder: (context, state) {
        state.maybeWhen(
          orElse: () => isLoading = false,
          loading: () => isLoading = true,
        );
        state.maybeWhen(
            orElse: () => errorScreen = null,
            error: (failure) {
              if (failure.statusCode == ResponseStatusCode.unAuthorizedCode ||
                  failure.statusCode == ResponseStatusCode.forbiddenCode) {
                context.read<AuthCubit>().loginCheck();
              }

              errorScreen =
                  failureScreenHandling(context, failureResponse: failure);
              if (errorScreen == null) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  showSnackBar(context, text: failure.errorMessage);
                });
              }
            });
        state.maybeWhen(
          initial: () =>
              conversationBloc.add(ConversationEvent.getListPagination()),
          gotList: (paginationConversationList) =>
              conversationList.addAll(paginationConversationList),
          orElse: () => null,
        );
        if (isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (errorScreen != null) {
          return errorScreen!;
        }
        if (conversationList.isEmpty) {
          return ErrorScreen(
            assetLogoImage: Assets.emptyMessageLogo,
            errorText: "هنوز تیکتی ثبت نشده",
            onTryText: "یه تیکت بزن",
            onTryPressed: () => showAddTitleFieldDialog(context),
          );
        }
        return PaginatedListView(conversationList: conversationList);
      },
    );
  }
}
