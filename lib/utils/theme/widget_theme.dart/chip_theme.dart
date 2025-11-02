import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class ChipThemeConstraint {
  // private constructor
  ChipThemeConstraint._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: ColorsConstraint.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: ColorsConstraint.black),
    selectedColor: ColorsConstraint.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ColorsConstraint.black,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: ColorsConstraint.darkerGrey,
    labelStyle: TextStyle(color: ColorsConstraint.white),
    selectedColor: ColorsConstraint.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ColorsConstraint.white,
  );
}
