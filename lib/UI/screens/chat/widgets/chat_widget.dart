import 'package:abarkhodro_application/UI/common/widgets/error_screen.dart';
import 'package:abarkhodro_application/UI/controllers/chat_bloc/chat_bloc.dart';
import 'package:abarkhodro_application/UI/screens/chat/widgets/chat_loading.dart';
import 'package:abarkhodro_application/UI/screens/chat/widgets/chat_messages.dart';
import 'package:abarkhodro_application/data/models/chat_model/chat_model.dart';
import 'package:abarkhodro_application/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatWidget extends StatelessWidget {
  ChatWidget({super.key});

  final _scrollController = ScrollController();

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    }
  }

  final chatFocusNode = FocusNode();
  final textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final List<ChatModel> chatList = [];
    return BlocBuilder<ChatBloc, ChatState>(buildWhen: (previous, current) {
      // conversation selected -> loading *
      return !(previous.maybeWhen(
            orElse: () => false,
            selectedConversation: (_) => true,
            error: (_) => true,
          ) &&
          current.maybeWhen(
            orElse: () => false,
            loading: () => true,
          ));
    }, builder: (context, state) {
      bool isSelectedConversation = false;
      bool isLoading = false;

      state.maybeWhen(
        orElse: () => isLoading = false,
        loading: () => isLoading = true,
      );

      state.maybeWhen(
        orElse: () => isSelectedConversation = true,
        initial: () => isSelectedConversation = false,
      );
      state.maybeWhen(
        selectedConversation: (conversationModel) {
          chatList.clear();
          chatList.addAll(conversationModel.messages!);
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _scrollToBottom();
          });
        },
        orElse: () {},
      );
      if (isLoading) {
        return ChatLoading();
      }
      if (!isSelectedConversation) {
        return ErrorScreen(
          assetLogoImage: Assets.emptyMessageLogo,
          errorText: "یک تیکت انتخاب کن",
        );
      }

      return ChatMessages(
        chatList: chatList,
        scrollController: _scrollController,
      );
    });
  }
}
