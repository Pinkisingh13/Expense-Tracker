import 'package:expense_tracker/utils/constants/colors.dart';
import 'package:expense_tracker/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class PLoaders {
  static hideSnackbar() =>
      ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

      
  static customToast({required message}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        elevation: 0,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: PHelperFunctions.isDarkMode(Get.context!)
                ? PColors.darkerGrey.withOpacity(0.9)
                : PColors.grey.withOpacity(0.9),
          ),
          child: Center(
            child: Text(
              message,
              style: Theme.of(Get.context!).textTheme.labelLarge,
            ),
          ),
        ),
      ),
    );
  }

  static errorSnackbar({required title, message = ''}) =>
      Get.snackbar(title, message,
          isDismissible: true,
          shouldIconPulse: true,
          colorText: PColors.white,
          backgroundColor: Colors.red.shade600,
          snackPosition: SnackPosition.BOTTOM,
          icon: const Icon(
            Iconsax.warning_2,
            color: PColors.white,
          ));

  static successSnackbar({required title, message = '', duration = 3}) =>
      Get.snackbar(title, message,
          isDismissible: true,
          shouldIconPulse: true,
          colorText: PColors.white,
          backgroundColor: PColors.primary,
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: duration),
          margin: const EdgeInsets.all(10),
          icon: const Icon(
            Iconsax.check,
            color: PColors.white,
          ));

  static warningSnackbar({required title, message = ''}) =>
      Get.snackbar(title, message,
          isDismissible: true,
          shouldIconPulse: true,
          colorText: PColors.white,
          backgroundColor: Colors.orange,
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 3),
          margin: const EdgeInsets.all(20),
          icon: const Icon(
            Iconsax.warning_2,
            color: PColors.black,
          ));
}