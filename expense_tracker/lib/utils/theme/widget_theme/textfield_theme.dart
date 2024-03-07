import 'package:expense_tracker/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import '../../constants/sizes.dart';

class PTextFormFieldTheme {
  PTextFormFieldTheme._();


// Light InputDecoration
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: PColors.darkGrey,
    suffixIconColor: PColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: PSizes.fontSizeMd, color: PColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: PSizes.fontSizeSm, color: PColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: PColors.black.withOpacity(0.8)),

    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.grey),
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: PColors.warning),
    ),
  );


// Dark InputDecoration
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: PColors.darkGrey,
    suffixIconColor: PColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: PSizes.fontSizeMd, color: PColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: PSizes.fontSizeSm, color: PColors.white),
    floatingLabelStyle: const TextStyle().copyWith(color: PColors.white.withOpacity(0.8),),

    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: PColors.warning),
    ),
  );
}
