import 'package:abarkhodro_application/UI/common/helpers/default_app_bar.dart';
import 'package:abarkhodro_application/UI/controllers/chat_bloc/chat_bloc.dart';
import 'package:abarkhodro_application/UI/screens/chat/widgets/chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chatBloc = context.read<ChatBloc>();
    return Scaffold(
      appBar: defaultAppBar(context, title: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => SizedBox(),
            selectedConversation: (conversationModel) =>
                Text(conversationModel.title),
          );
        },
      ), actions: [
        IconButton(
          icon: Icon(Icons.arrow_forward),
          onPressed: () => chatBloc.add(ChatEvent.started()),
        )
      ]),
      body: ChatWidget(),
    );
  }
}
