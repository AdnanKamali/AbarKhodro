import 'package:abarkhodro_application/utils/assets.dart';
import 'package:abarkhodro_application/utils/theme/color.dart';
import 'package:flutter/material.dart';

class EmptyTicketWidget extends StatelessWidget {
  const EmptyTicketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(Assets.emptyMessageLogo),
        ),
        Text(
          "هنوز تیکتی ثبت نشده",
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: AppColor.grey1, fontSize: 36),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "یه تیکت بزن +",
              style: TextStyle(color: AppColor.primary),
            ))
      ],
    );
  }
}
