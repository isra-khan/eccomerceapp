import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:eccomerceapp/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class TextFormFieldThemeConstraint {
  TextFormFieldThemeConstraint._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: ColorsConstraint.darkGrey,
    suffixIconColor: ColorsConstraint.darkGrey,
    labelStyle: const TextStyle().copyWith(
      fontSize: SizesConstraint.fontSizeMd,
      color: ColorsConstraint.black,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: SizesConstraint.fontSizeSm,
      color: ColorsConstraint.black,
    ),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: ColorsConstraint.black.withValues(alpha: 0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizesConstraint.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorsConstraint.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizesConstraint.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorsConstraint.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizesConstraint.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorsConstraint.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizesConstraint.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorsConstraint.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizesConstraint.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ColorsConstraint.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: ColorsConstraint.darkGrey,
    suffixIconColor: ColorsConstraint.darkGrey,
    labelStyle: const TextStyle().copyWith(
      fontSize: SizesConstraint.fontSizeMd,
      color: ColorsConstraint.white,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: SizesConstraint.fontSizeSm,
      color: ColorsConstraint.white,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: ColorsConstraint.white.withValues(alpha: 0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizesConstraint.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorsConstraint.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizesConstraint.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorsConstraint.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizesConstraint.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorsConstraint.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizesConstraint.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorsConstraint.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizesConstraint.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ColorsConstraint.warning),
    ),
  );
}
