import 'package:abarkhodro_application/UI/controllers/chat_bloc/chat_bloc.dart';
import 'package:abarkhodro_application/data/models/chat_model/chat_model.dart';
import 'package:abarkhodro_application/localization/app_localization.dart';
import 'package:abarkhodro_application/utils/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatInputField extends StatelessWidget {
  ChatInputField({super.key, required this.chatFocusNode});

  final FocusNode chatFocusNode;
  final fieldController = TextEditingController();

  void _onSendMessage(ChatBloc chatBloc) {
    final isReadyToSend = chatBloc.state.maybeWhen(
      orElse: () => true,
      loading: () => false,
    );
    if (fieldController.text != "" && isReadyToSend) {
      final createChatModel = ChatModel(
        content: fieldController.text,
        role: Role.user,
      );
      chatBloc.add(
        ChatEvent.sendMessage(
          chatModel: createChatModel,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final chatBloc = context.read<ChatBloc>();
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              focusNode: chatFocusNode,
              controller: fieldController,
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              maxLines: null,
              decoration: InputDecoration(
                hintText: AppLocalization.pleaseEnterYourMessage,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(width: 8),
          IconButton(
            icon: Icon(Icons.send, color: AppColor.blue),
            onPressed: () => _onSendMessage(chatBloc),
          ),
        ],
      ),
    );
  }
}
