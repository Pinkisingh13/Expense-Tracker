
import 'package:expense_tracker/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:expense_tracker/features/authentication/screens/signup/widgets/signup_titleandsubtitle.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';

import 'package:flutter/material.dart';



class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: PColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(PSizes.defaultSpace),
            child: Column(
              children: [

                /// -- Title & SubTitle --
                SignupTitleAndSubtitle(),
                 SizedBox(
                  height: PSizes.spaceBtwSections,
                ),

                // -- Form ---
                SignupForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

