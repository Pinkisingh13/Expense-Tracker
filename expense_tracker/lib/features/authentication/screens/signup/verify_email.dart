import 'package:expense_tracker/features/authentication/controllers/signup/verifyemail_controller.dart';
import 'package:expense_tracker/utils/constants/colors.dart';
import 'package:expense_tracker/utils/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:expense_tracker/utils/constants/image_string.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:expense_tracker/utils/constants/text_string.dart';
import 'package:expense_tracker/utils/helpers/helper_function.dart';
import 'package:pinput/pinput.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});

  final String? email;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            // onPressed: () => Get.offAll(() => const LoginScreen()),
            // onPressed: () => AuthenticationRepository.instance.logout(),
            onPressed: () {},
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Padding to give Default Equal Space on all sides in all screen
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                image: const AssetImage(PImages.deliveredEmailIllustration),
                width: PHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              ///Title & SubTitle
              Text(
                PTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              /// Otp Fields
              Form(
                key: controller.otpkey,
                child: Pinput(
                  validator: (value) => 
                    PValidator.validateOtp(value),                 
                  length: 6,
                  controller: controller.otp,
                  defaultPinTheme: PinTheme(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: PColors.darkGrey),
                    ),
                  ),
                  // controller: ,
                  animationDuration: const Duration(milliseconds: 500),
                  autofocus: true,
                  enableSuggestions: true,

                  errorBuilder: (errorText, pin) {
                    return const GetSnackBar(
                      message: "Please enter Correct Otp.",
                    );
                  },
                  keyboardType: TextInputType.number,
                  closeKeyboardWhenCompleted: true,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  useNativeKeyboard: true,
                  followingPinTheme: const PinTheme(
                    decoration: BoxDecoration(color: PColors.softGrey),
                    width: 50,
                    height: 50,
                  ),
                ),
              ),

              const SizedBox(
                height: PSizes.spaceBtwSections * 2,
              ),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    controller.checkEmailVerificationStatus();
                  },
                  child: const Text(PTexts.tContinue),
                ),
              ),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
