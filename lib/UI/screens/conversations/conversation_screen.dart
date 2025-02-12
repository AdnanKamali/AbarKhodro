import 'package:abarkhodro_application/UI/common/helpers/default_app_bar.dart';
import 'package:abarkhodro_application/UI/screens/conversations/helpers/add_or_edit_conversation_dialog.dart';
import 'package:abarkhodro_application/UI/screens/conversations/widgets/conversation_widget.dart';
import 'package:flutter/material.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConversationWidget(),
      appBar: defaultAppBar(context, title: Text("تیکت ها")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showAddTitleFieldDialog(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
