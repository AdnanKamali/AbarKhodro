import 'package:abarkhodro_application/utils/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({
    super.key,
    required this.title,
    required this.onConfirm,
    required this.onConfirmText,
    required this.onCloseText,
    this.content,
    this.onConfirmButtonColor = AppColor.primary,
  });

  final String title;
  final void Function() onConfirm;
  final String onConfirmText;
  final String onCloseText;
  final Widget? content;
  final Color? onConfirmButtonColor;

  @override
  Widget build(BuildContext context) {
    bool isSubmitted = false;
    final smallLableTextStyle = Theme.of(context).textTheme.labelSmall;
    return AlertDialog(
      title: Text(title),
      actions: [
        Row(
          spacing: 6,
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: onConfirmButtonColor),
                onPressed: () {
                  if (isSubmitted) return;
                  isSubmitted = true;
                  onConfirm();
                },
                child: Text(
                  onConfirmText,
                  style: smallLableTextStyle,
                ),
              ),
            ),
            Expanded(
              child: OutlinedButton(
                onPressed: () => context.pop(),
                child: Text(onCloseText, style: smallLableTextStyle),
              ),
            )
          ],
        )
      ],
      content: content,
    );
  }
}
