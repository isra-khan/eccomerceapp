import 'package:flutter/material.dart';

class HelperFunctionConstraint {
  HelperFunctionConstraint._();
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
