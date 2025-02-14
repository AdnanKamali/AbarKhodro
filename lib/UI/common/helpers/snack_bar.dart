import 'package:flutter/material.dart';

void showSnackBar(BuildContext context,
    {required String text, Color? backgroundColor}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
    backgroundColor:
        backgroundColor ?? Theme.of(context).snackBarTheme.backgroundColor,
  ));
}
