import 'package:flutter/material.dart';

const _largeSmartPhoneMaximumSize = 1024;
const _smartPhoneMaximumSize = 840;
const _smallSmartPhoneMaximumSize = 600;

bool isDesktop(BuildContext context) {
  return MediaQuery.sizeOf(context).width > _largeSmartPhoneMaximumSize;
}

bool isSmartPhone(BuildContext context) {
  return MediaQuery.sizeOf(context).width <= _smartPhoneMaximumSize;
}

bool isSmallSmartPhone(BuildContext context) {
  return MediaQuery.sizeOf(context).width <= _smallSmartPhoneMaximumSize;
}
