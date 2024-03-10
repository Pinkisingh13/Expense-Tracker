import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:expense_tracker/common/styles/spacing_style.dart';
import 'package:expense_tracker/features/authentication/screens/login/login.dart';
import 'package:expense_tracker/features/authentication/screens/signup/signup.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:expense_tracker/utils/constants/text_string.dart';

class WelcomeButtons extends StatelessWidget {
  const WelcomeButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PSpacingStyle.paddingWithAppBarHeight,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const SignupScreen());
              },
              child: const Text(PTexts.signupTitle),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwItems,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Get.to(() => const LoginScreen());
              },
              child: const Text(PTexts.loginTitle),
            ),
          ),
        ],
      ),
    );
  }
}
