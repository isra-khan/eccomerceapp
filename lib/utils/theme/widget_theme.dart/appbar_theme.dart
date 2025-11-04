import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:eccomerceapp/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class AppBarThemeConstraint {
  AppBarThemeConstraint._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,

    iconTheme: IconThemeData(
      color: ColorsConstraint.black,
      size: SizesConstraint.iconMd,
    ),
    actionsIconTheme: IconThemeData(
      color: ColorsConstraint.black,
      size: SizesConstraint.iconMd,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: ColorsConstraint.black,
    ),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: ColorsConstraint.white,
      size: SizesConstraint.iconMd,
    ),
    actionsIconTheme: IconThemeData(
      color: ColorsConstraint.white,
      size: SizesConstraint.iconMd,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: ColorsConstraint.white,
    ),
  );
}
