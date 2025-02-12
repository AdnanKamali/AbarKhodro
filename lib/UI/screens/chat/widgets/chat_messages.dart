import 'package:abarkhodro_application/UI/common/widgets/error_screen.dart';
import 'package:abarkhodro_application/UI/screens/chat/widgets/chat_field.dart';
import 'package:abarkhodro_application/UI/screens/chat/widgets/chat_message_box.dart';
import 'package:abarkhodro_application/data/models/chat_model/chat_model.dart';
import 'package:abarkhodro_application/localization/app_localization.dart';
import 'package:abarkhodro_application/utils/assets.dart';

import 'package:flutter/material.dart';

class ChatMessages extends StatelessWidget {
  ChatMessages({
    super.key,
    required this.chatList,
    required this.scrollController,
  });

  final List<ChatModel> chatList;
  final ScrollController scrollController;

  final FocusNode chatFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    if (chatList.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ErrorScreen(
            assetLogoImage: Assets.emptyMessageLogo,
            errorText: AppLocalization.notFoundChat,
            onTryText: AppLocalization.pleaseSendMessage,
            onTryPressed: () {
              chatFocusNode.requestFocus();
            },
          ),
          ChatInputField(chatFocusNode: chatFocusNode),
        ],
      );
    }

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            controller: scrollController,
            itemCount: chatList.length,
            itemBuilder: (context, index) {
              final message = chatList[index];

              return ChatMessageBox(
                message: message,
                isLastMessage: index == chatList.length - 1,
              );
            },
          ),
        ),
        ChatInputField(chatFocusNode: chatFocusNode),
      ],
    );
  }
}
