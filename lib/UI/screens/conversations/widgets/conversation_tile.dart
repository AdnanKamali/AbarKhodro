import 'package:abarkhodro_application/UI/controllers/chat_bloc/chat_bloc.dart';
import 'package:abarkhodro_application/UI/screens/conversations/helpers/add_or_edit_conversation_dialog.dart';
import 'package:abarkhodro_application/data/models/conversation_model/conversation_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamsi_date/shamsi_date.dart';

class ConversationTile extends StatelessWidget {
  const ConversationTile({super.key, required this.conversationModel});

  final ConversationModel conversationModel;

  @override
  Widget build(BuildContext context) {
    final chatBloc = context.read<ChatBloc>();
    final updatedAt = Jalali.fromDateTime(conversationModel.updatedAt!);
    return ListTile(
      onTap: () {
        chatBloc.add(
          ChatEvent.selectConversation(conversationModel: conversationModel),
        );
      },
      trailing: IconButton(
        icon: Icon(Icons.mode_edit_outlined),
        onPressed: () => showEditTitleFieldDialog(
          context,
          conversationModel: conversationModel,
        ),
      ),
      title: Text(
        conversationModel.title,
      ),
      subtitle: RichText(
        text: TextSpan(
          style: Theme.of(context).listTileTheme.subtitleTextStyle,
          children: [
            TextSpan(text: "تاریخ آخرین تغییر: "),
            TextSpan(
              text:
                  "${updatedAt.formatter.dd} ${updatedAt.formatter.mN} ${updatedAt.formatter.yyyy}, ${updatedAt.hour}:${updatedAt.minute}:${updatedAt.second}",
            ),
          ],
        ),
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
