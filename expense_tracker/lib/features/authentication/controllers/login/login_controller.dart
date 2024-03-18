import 'package:expense_tracker/data/repositories/authentication/authentication_repo.dart';
import 'package:expense_tracker/features/authentication/models/signup_model/signup_model.dart';
import 'package:expense_tracker/utils/constants/image_string.dart';
import 'package:expense_tracker/utils/helpers/network_manager.dart';
import 'package:expense_tracker/utils/popups/full_screen_loader.dart';
import 'package:expense_tracker/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  /// -- Variables --
  final togglePassword = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  // -- Login --
  Future<void> login() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialogue(
          'We are processing your information...', PImages.docerAnimation);

      // Check Internet Connection
      final isConnected = await NetworkManager.instance.isConnected();

      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!loginKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      /// Api
      AuthenticationRepository.instance
          .login(Login(email: email.text, password: password.text)); 
    } catch (e) {
      // Show some generic error to the user
      PLoaders.errorSnackbar(title: "Oh Snap!", message: e.toString());
    }
  }
}
