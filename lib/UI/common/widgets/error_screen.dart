import 'package:abarkhodro_application/utils/theme/color.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    required this.assetLogoImage,
    required this.errorText,
    this.onTryText,
    this.onTryPressed,
  });

  final String assetLogoImage;
  final String errorText;
  final String? onTryText;
  final void Function()? onTryPressed;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrained) {
      final maxWidth = constrained.maxWidth;
      final isSmallScreen = maxWidth < 600;
      return Center(
        child: Column(
          spacing: 12,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              assetLogoImage,
              height: isSmallScreen ? 150 : 200,
            ),
            Text(
              errorText,
              textAlign: TextAlign.center,
              style: isSmallScreen
                  ? Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColor.grey1)
                  : Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: AppColor.grey1),
            ),
            if (onTryPressed != null && onTryText != null)
              OutlinedButton(
                onPressed: onTryPressed,
                child: Text(
                  onTryText!,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: AppColor.primary),
                ),
              ),
          ],
        ),
      );
    });
  }
}
