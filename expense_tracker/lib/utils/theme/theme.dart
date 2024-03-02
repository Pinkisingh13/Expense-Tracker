import 'package:expense_tracker/utils/constants/colors.dart';
import 'package:expense_tracker/utils/theme/widget_theme/appbar_theme.dart';
import 'package:expense_tracker/utils/theme/widget_theme/bottomsheet_theme.dart';
import 'package:expense_tracker/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:expense_tracker/utils/theme/widget_theme/outline_button_theme.dart';
import 'package:expense_tracker/utils/theme/widget_theme/text_theme.dart';
import 'package:expense_tracker/utils/theme/widget_theme/textfield_theme.dart';
import 'package:flutter/material.dart';

class PAppTheme {
  PAppTheme._();

  
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: PColors.grey,
    brightness: Brightness.light,
    primaryColor: PColors.primary,
    textTheme: PTextTheme.lightTextTheme,
    scaffoldBackgroundColor: PColors.white,
    appBarTheme:PAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: PBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: PElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: POutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: PTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: PColors.grey,
    brightness: Brightness.dark,
    primaryColor: PColors.primary,
    textTheme: PTextTheme.darkTextTheme,
    scaffoldBackgroundColor: PColors.black,
    appBarTheme: PAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: PBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: PElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: POutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: PTextFormFieldTheme.darkInputDecorationTheme,
  );
}
