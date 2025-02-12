import 'package:abarkhodro_application/UI/screens/chat/widgets/chat_field.dart';
import 'package:abarkhodro_application/UI/screens/chat/widgets/chat_message_box_loading.dart';
import 'package:flutter/material.dart';

class ChatLoading extends StatelessWidget {
  ChatLoading({super.key});

  final FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return ChatMessageBoxLoading(index: index);
            },
          ),
        ),
        ChatInputField(chatFocusNode: focusNode),
      ],
    );
  }
}
