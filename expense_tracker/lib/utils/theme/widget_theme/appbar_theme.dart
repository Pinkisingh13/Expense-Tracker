import 'package:expense_tracker/utils/constants/colors.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PAppBarTheme{
  PAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: PColors.black, size: PSizes.iconMd),
    actionsIconTheme: IconThemeData(color: PColors.black, size: PSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: PColors.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: PColors.black, size: PSizes.iconMd),
    actionsIconTheme: IconThemeData(color: PColors.white, size: PSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: PColors.white),
  );
}