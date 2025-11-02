import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:eccomerceapp/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class OutlinedButtonThemeConstraint {
  OutlinedButtonThemeConstraint._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorsConstraint.dark,
      side: const BorderSide(color: ColorsConstraint.borderPrimary),
      textStyle: const TextStyle(
        fontSize: 16,
        color: ColorsConstraint.black,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: SizesConstraint.buttonHeight,
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizesConstraint.buttonRadius),
      ),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ColorsConstraint.light,
      side: const BorderSide(color: ColorsConstraint.borderPrimary),
      textStyle: const TextStyle(
        fontSize: 16,
        color: ColorsConstraint.textWhite,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: SizesConstraint.buttonHeight,
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizesConstraint.buttonRadius),
      ),
    ),
  );
}
