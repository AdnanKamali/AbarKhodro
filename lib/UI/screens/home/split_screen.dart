import 'dart:async';

import 'package:abarkhodro_application/UI/common/helpers/default_app_bar.dart';
import 'package:abarkhodro_application/UI/common/helpers/snack_bar.dart';
import 'package:abarkhodro_application/UI/controllers/aut_cubit/auth_cubit.dart';
import 'package:abarkhodro_application/UI/controllers/chat_bloc/chat_bloc.dart';
import 'package:abarkhodro_application/UI/screens/chat/chat_screen.dart';
import 'package:abarkhodro_application/UI/screens/chat/widgets/chat_widget.dart';
import 'package:abarkhodro_application/UI/screens/conversations/conversation_screen.dart';
import 'package:abarkhodro_application/UI/screens/conversations/helpers/add_or_edit_conversation_dialog.dart';
import 'package:abarkhodro_application/UI/screens/conversations/widgets/conversation_widget.dart';
import 'package:abarkhodro_application/utils/device.dart';
import 'package:abarkhodro_application/utils/response.dart';
import 'package:abarkhodro_application/utils/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplitScreen extends StatefulWidget {
  const SplitScreen({super.key});

  @override
  State<SplitScreen> createState() => _SplitScreenState();
}

class _SplitScreenState extends State<SplitScreen> {
  late ChatBloc chatBloc;
  late StreamSubscription<ChatState> _chatBlocStreamSubscription;

  final screens = [
    ConversationScreen(),
    ChatScreen(),
  ];

  int index = 0;

  @override
  void initState() {
    chatBloc = context.read<ChatBloc>();
    _chatBlocStreamSubscription = chatBloc.stream.listen(
      (event) => event.when<void>(
        loading: () {
          index = 1;
          if (!isDesktop(context)) setState(() {});
        },
        initial: () {
          index = 0;
          if (!isDesktop(context)) setState(() {});
        },
        selectedConversation: (conversationModel) {
          index = 1;
          if (!isDesktop(context)) setState(() {});
        },
        error: (failure) {
          if (failure.statusCode == ResponseStatusCode.unAuthorizedCode ||
              failure.statusCode == ResponseStatusCode.forbiddenCode) {
            print("ERROR");
            context.read<AuthCubit>().loginCheck();
          }
          WidgetsBinding.instance.addPostFrameCallback((_) {
            showSnackBar(context, text: failure.errorMessage);
          });
        },
      ),
    );
    super.initState();
  }

  @override
  void dispose() async {
    super.dispose();
    await _chatBlocStreamSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    if (isDesktop(context)) {
      return Scaffold(
        appBar: defaultAppBar(context, title: BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => SizedBox(),
              selectedConversation: (conversationModel) =>
                  Text(conversationModel.title),
            );
          },
        )),
        body: Row(
          children: [
            Expanded(
              flex: 3,
              child: ChatWidget(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.5),
              child: VerticalDivider(
                width: 2,
                thickness: 0.3,
                color: AppColor.grey1,
              ),
            ),
            Expanded(
              flex: 1,
              child: ConversationWidget(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showAddTitleFieldDialog(
              context,
            );
          },
          child: Icon(Icons.add),
        ),
      );
    }
    return screens[index];
  }
}
