import 'package:expense_tracker/common/widgets/login_signup/form_buttons.dart';
import 'package:expense_tracker/common/widgets/login_signup/form_divider.dart';
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
    return Scaffold(
      // backgroundColor: PColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(PSizes.defaultSpace),
            child: Column(
              children: [
                /// -- Icon, Title & SubTitle --
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

                /// -- Divider --
                const SizedBox(
                  height: PSizes.spaceBtwSections,
                ),
                const PFormDivider(
                  dividerTitle: PTexts.orSignUpWith,
                ),

                /// -- Social Buttons --
                const SizedBox(
                  height: PSizes.spaceBtwSections,
                ),
                const PSocialButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
