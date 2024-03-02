import 'package:expense_tracker/utils/constants/colors.dart';
import 'package:flutter/material.dart';
class PBottomSheetTheme {
  PBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: PColors.white,
    modalBackgroundColor: PColors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: PColors.black,
    modalBackgroundColor: PColors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
