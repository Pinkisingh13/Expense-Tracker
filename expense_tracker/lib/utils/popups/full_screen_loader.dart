import 'package:expense_tracker/common/widgets/loaders/animation_loader.dart';
import 'package:expense_tracker/utils/constants/colors.dart';
import 'package:expense_tracker/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TFullScreenLoader {
  /// Open a full-Screen loading dialog with a given Text and animation.
  /// This method does not return anything.
  /// Parameters:
  //  - text : The text to be displayed in the dialog.
  //  - animation : the Lottie animation to be shown.
  static void openLoadingDialogue(String text, String animation) {
    showDialog(
      context: Get.overlayContext!, //Use Get.overlayContext for overlay dialogs
      barrierDismissible:
          false, //The dialog can't be dismissed by tapping outside
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: PHelperFunctions.isDarkMode(Get.context!)
              ? PColors.dark
              : PColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
               const SizedBox(
                height: 250,
              ),
              PAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }


/// Stop the currently open loading dialog.
/// This method does not return anything.
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
