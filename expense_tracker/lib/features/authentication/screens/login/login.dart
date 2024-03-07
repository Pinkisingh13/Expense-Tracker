import 'package:expense_tracker/common/widgets/login_signup/form_buttons.dart';
import 'package:expense_tracker/common/widgets/login_signup/form_divider.dart';
import 'package:expense_tracker/common/widgets/texts/titleandsubtitle.dart';
import 'package:expense_tracker/features/authentication/screens/login/widgets/login_form.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:expense_tracker/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(PSizes.defaultSpace),
            child: Column(
              children: [

                /// Icon, Title & SubTitle
                TextTitleAndSloganWidget(
                  isAlign: true,
                  setFunc: true,
                  setImage: false,
                  title: PTexts.loginTitle,
                  subtitle: PTexts.loginSubTitle,
                  onPressed: () => Get.back(),
                ),
                const SizedBox(
                  height: PSizes.spaceBtwSections,
                ),
                const SizedBox(
                  height: PSizes.spaceBtwSections,
                ),

                /// Form
                const LoginForm(),

                /// Divider
                const SizedBox(
                  height: PSizes.spaceBtwSections,
                ),
                const PFormDivider(
                  dividerTitle: PTexts.orSignInWith,
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

