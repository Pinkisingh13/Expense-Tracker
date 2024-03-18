import 'package:expense_tracker/data/repositories/authentication/authentication_repo.dart';
import 'package:expense_tracker/features/authentication/models/signup_model/signup_model.dart';
import 'package:expense_tracker/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_string.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  // -- Variables --
  final togglePassword = true.obs;
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final phoneNum = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> signupKey = GlobalKey<FormState>();

  // -- SIGNUP --
  Future<void> signup() async {
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
      if (!signupKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      /// Api
       AuthenticationRepository.instance.register(
        User(
          firstName: firstName.text,
          lastName: lastName.text,
          email: email.text,
          phoneNum: phoneNum.text,
          password: password.text,
        ),
      );
      
    } catch (e) {
      // Show some generic error to the user
      PLoaders.errorSnackbar(title: "Oh Snap!", message: e.toString());
    }
  }
}
