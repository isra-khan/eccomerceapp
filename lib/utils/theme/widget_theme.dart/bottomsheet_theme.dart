import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class BottomSheetThemeConstraint {
  BottomSheetThemeConstraint._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: ColorsConstraint.white,
    modalBackgroundColor: ColorsConstraint.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: ColorsConstraint.black,
    modalBackgroundColor: ColorsConstraint.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
