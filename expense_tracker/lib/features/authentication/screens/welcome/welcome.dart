import 'package:expense_tracker/features/authentication/screens/welcome/widget/welcometitlewidget.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/features/authentication/screens/welcome/widget/welcomebuttons.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: PColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///  Title & Subtitle
              WelcomeTitleWidget(),

              /// Buttons
              SizedBox(
                height: PSizes.spaceBtwSections,
              ),
              WelcomeButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
