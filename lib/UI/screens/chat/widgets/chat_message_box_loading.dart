import 'package:abarkhodro_application/utils/theme/color.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:flutter/material.dart';

class ChatMessageBoxLoading extends StatelessWidget {
  const ChatMessageBoxLoading({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final isUserRole = index % 2 == 0;
    return Row(
      mainAxisAlignment:
          isUserRole ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        if (!isUserRole) CircleAvatar(),
        SizedBox(width: 8),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Shimmer(
              duration: Duration(seconds: 3), //Default value
              color: Colors.white, //Default value
              enabled: true, //Default value
              direction: ShimmerDirection.fromLTRB(), //Default Value

              child: Column(
                crossAxisAlignment: isUserRole
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    height: 120,
                    decoration: BoxDecoration(
                      color: isUserRole ? Colors.blueAccent : AppColor.grey1,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        if (isUserRole) CircleAvatar(),
      ],
    );
  }
}
