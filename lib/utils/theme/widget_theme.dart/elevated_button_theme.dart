import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:eccomerceapp/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class ElevatedButtonThemeConstraint {
  ElevatedButtonThemeConstraint._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorsConstraint.light,
      backgroundColor: ColorsConstraint.primary,
      disabledForegroundColor: ColorsConstraint.darkGrey,
      disabledBackgroundColor: ColorsConstraint.buttonDisabled,
      side: const BorderSide(color: ColorsConstraint.light),
      padding: const EdgeInsets.symmetric(
        vertical: SizesConstraint.buttonHeight,
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        color: ColorsConstraint.textWhite,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizesConstraint.buttonRadius),
      ),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorsConstraint.light,
      backgroundColor: ColorsConstraint.primary,
      disabledForegroundColor: ColorsConstraint.darkGrey,
      disabledBackgroundColor: ColorsConstraint.darkerGrey,
      side: const BorderSide(color: ColorsConstraint.primary),
      padding: const EdgeInsets.symmetric(
        vertical: SizesConstraint.buttonHeight,
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        color: ColorsConstraint.textWhite,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizesConstraint.buttonRadius),
      ),
    ),
  );
}
