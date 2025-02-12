import 'package:abarkhodro_application/data/models/chat_model/chat_model.dart';
import 'package:abarkhodro_application/utils/assets.dart';
import 'package:abarkhodro_application/utils/chat_formater.dart';
import 'package:abarkhodro_application/utils/constants.dart';
import 'package:abarkhodro_application/utils/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:shamsi_date/shamsi_date.dart';

import '../../../common/widgets/animated_text.dart';

class ChatMessageBox extends StatelessWidget {
  const ChatMessageBox({
    super.key,
    required this.message,
    required this.isLastMessage,
  });

  final ChatModel message;
  final bool isLastMessage; // when is the last message then animated

  @override
  Widget build(BuildContext context) {
    final isUserRole = message.role == Role.user;

    final timestamp = Jalali.fromDateTime(message.timestamp!);
    return Row(
      mainAxisAlignment:
          isUserRole ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        if (!isUserRole)
          CircleAvatar(
            backgroundImage: AssetImage(Assets.assistantProfile),
          ),
        SizedBox(width: 8),
        Flexible(
          child: Column(
            crossAxisAlignment:
                isUserRole ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsetsConstants.pA10,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  color: isUserRole ? Colors.blueAccent : AppColor.grey1,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isUserRole
                        ? Text(
                            chatFormatter(message.content),
                            style: TextStyle(color: AppColor.white),
                            softWrap: true,
                          )
                        : isLastMessage
                            ? AnimatedText(
                                text: chatFormatter(message.content),
                                id: message.id!,
                              )
                            : Text(
                                chatFormatter(message.content),
                                style: TextStyle(
                                  color: AppColor.darkBackground,
                                ),
                                softWrap: true,
                              ),
                    SizedBox(height: 5),
                    RichText(
                      text: TextSpan(
                        style:
                            Theme.of(context).listTileTheme.subtitleTextStyle,
                        children: [
                          TextSpan(
                            text:
                                "${timestamp.formatter.dd} ${timestamp.formatter.mN} ${timestamp.formatter.yyyy}, ${timestamp.hour}:${timestamp.minute}:${timestamp.second}",
                          ),
                        ],
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (isUserRole)
          CircleAvatar(
            backgroundImage: AssetImage(Assets.userProfile),
          ),
      ],
    );
  }
}
