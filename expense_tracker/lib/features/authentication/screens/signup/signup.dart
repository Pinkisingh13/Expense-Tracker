import 'package:expense_tracker/common/widgets/texts/titleandsubtitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:expense_tracker/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:expense_tracker/utils/constants/text_string.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // backgroundColor: PColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(PSizes.defaultSpace),
            child: Column(
              children: [ 
                /// -- Title & SubTitle --
                TextTitleAndSloganWidget(
                  isAlign: true,
                  setFunc: true,
                  setImage: false,
                  title: PTexts.signupTitle,
                  subtitle: PTexts.signupSubTitle,
                  onPressed: () => Get.back(),
                ),
                const SizedBox(
                  height: PSizes.spaceBtwSections,
                ),

                // -- Form ---
                const SignupForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
