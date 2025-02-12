import 'package:flutter/material.dart';

///
/// Argument to build Text Field
class LoginFormFieldWidgetArgs {
  LoginFormFieldWidgetArgs({
    required this.validator,
    required this.onSaved,
    required this.labelText,
    this.enabled = true,
  });

  String? Function(String?)? validator;
  final bool enabled;
  String? labelText;
  void Function(String?)? onSaved;
}

class LoginFormFieldWidget extends StatelessWidget {
  LoginFormFieldWidget({super.key, required this.formFieldWidgetArgs});

  final LoginFormFieldWidgetArgs formFieldWidgetArgs;

  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final inputDecoration = InputDecoration(
      enabled: formFieldWidgetArgs.enabled,
      label: formFieldWidgetArgs.labelText != null
          ? Text(formFieldWidgetArgs.labelText!)
          : null,
    );

    return TextFormField(
      validator: formFieldWidgetArgs.validator,
      focusNode: _focusNode,
      onTapOutside: (event) => _focusNode.unfocus(),
      decoration: inputDecoration,
      textDirection: TextDirection.ltr,
      onSaved:
          !formFieldWidgetArgs.enabled ? null : formFieldWidgetArgs.onSaved,
    );
  }
}
