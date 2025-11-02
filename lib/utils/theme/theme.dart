import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:eccomerceapp/utils/theme/checkbox_theme.dart';
import 'package:eccomerceapp/utils/theme/widget_theme.dart/appbar_theme.dart';
import 'package:eccomerceapp/utils/theme/widget_theme.dart/bottomsheet_theme.dart';
import 'package:eccomerceapp/utils/theme/widget_theme.dart/chip_theme.dart';
import 'package:eccomerceapp/utils/theme/widget_theme.dart/elevated_button_theme.dart';
import 'package:eccomerceapp/utils/theme/widget_theme.dart/outline_button_theme.dart';
import 'package:eccomerceapp/utils/theme/widget_theme.dart/text_theme.dart';
import 'package:eccomerceapp/utils/theme/widget_theme.dart/textfield_theme.dart';
import 'package:flutter/material.dart';

class AppThemeConstraint {
  // private constructor
  AppThemeConstraint._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.light,
    primaryColor: ColorsConstraint.primary,
    disabledColor: ColorsConstraint.grey,
    textTheme: TextThemeConstraint.lightTextTheme,
    chipTheme: ChipThemeConstraint.lightChipTheme,
    scaffoldBackgroundColor: ColorsConstraint.white,
    appBarTheme: AppBarThemeConstraint.lightAppBarTheme,
    checkboxTheme: CheckboxThemeConstraint.lightCheckboxTheme,
    bottomSheetTheme: BottomSheetThemeConstraint.lightBottomSheetTheme,
    elevatedButtonTheme: ElevatedButtonThemeConstraint.lightElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemeConstraint.lightOutlinedButtonTheme,
    inputDecorationTheme:
        TextFormFieldThemeConstraint.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.dark,
    primaryColor: ColorsConstraint.primary,
    disabledColor: ColorsConstraint.grey,
    textTheme: TextThemeConstraint.darkTextTheme,
    chipTheme: ChipThemeConstraint.darkChipTheme,
    scaffoldBackgroundColor: ColorsConstraint.black,
    appBarTheme: AppBarThemeConstraint.darkAppBarTheme,
    checkboxTheme: CheckboxThemeConstraint.darkCheckboxTheme,
    bottomSheetTheme: BottomSheetThemeConstraint.darkBottomSheetTheme,
    elevatedButtonTheme: ElevatedButtonThemeConstraint.darkElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemeConstraint.darkOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldThemeConstraint.darkInputDecorationTheme,
  );
}
