import 'dart:async';

import 'package:abarkhodro_application/UI/common/widgets/dialog_widget.dart';
import 'package:abarkhodro_application/UI/controllers/aut_cubit/auth_cubit.dart';
import 'package:abarkhodro_application/UI/controllers/conversation_bloc/conversation_bloc.dart';
import 'package:abarkhodro_application/data/models/conversation_model/conversation_model.dart';
import 'package:abarkhodro_application/localization/app_localization.dart';
import 'package:abarkhodro_application/utils/response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void showAddTitleFieldDialog(BuildContext context) {
  final conversationBloc = context.read<ConversationBloc>();
  final controller = TextEditingController();
  late StreamSubscription<ConversationState> conversationBlocStream;
  conversationBlocStream = conversationBloc.stream.listen((event) {
    event.maybeMap(
      orElse: () => null,
      error: (value) async {
        if (value.failure.statusCode == ResponseStatusCode.unAuthorizedCode ||
            value.failure.statusCode == ResponseStatusCode.forbiddenCode) {
          context.read<AuthCubit>().loginCheck();
        }
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(value.failure.errorMessage)));
          context.pop();
        });
        await conversationBlocStream.cancel();
      },
      gotList: (value) async {
        context.pop();
        await conversationBlocStream.cancel();
      },
    );
  });
  showDialog(
    context: context,
    builder: (context) => DialogWidget(
      title: AppLocalization.enterTitle,
      onConfirmText: AppLocalization.addChat,
      onConfirm: () => conversationBloc.add(
        ConversationEvent.create(
          conversationModel: ConversationModel(title: controller.text),
        ),
      ),
      onCloseText: AppLocalization.close,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
          )
        ],
      ),
    ),
  );
}

void showEditTitleFieldDialog(BuildContext context,
    {required ConversationModel conversationModel}) {
  final conversationBloc = context.read<ConversationBloc>();
  late StreamSubscription<ConversationState> conversationBlocStream;
  conversationBlocStream = conversationBloc.stream.listen((event) {
    event.maybeMap(
      orElse: () => null,
      error: (value) async {
        if (value.failure.statusCode == ResponseStatusCode.unAuthorizedCode ||
            value.failure.statusCode == ResponseStatusCode.forbiddenCode) {
          context.read<AuthCubit>().loginCheck();
        }

        WidgetsBinding.instance.addPostFrameCallback((_) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(value.failure.errorMessage)));
          context.pop();
        });
        await conversationBlocStream.cancel();
      },
      gotList: (value) async {
        context.pop();
        await conversationBlocStream.cancel();
      },
    );
  });

  final controller = TextEditingController();
  controller.text = conversationModel.title;
  showDialog(
    context: context,
    builder: (context) => DialogWidget(
      title: AppLocalization.enterTitle,
      onConfirmText: AppLocalization.editTitle,
      onConfirm: () => conversationBloc.add(
        ConversationEvent.update(
          conversationModel: conversationModel.copyWith(title: controller.text),
        ),
      ),
      onCloseText: AppLocalization.close,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
          )
        ],
      ),
    ),
  );
}
