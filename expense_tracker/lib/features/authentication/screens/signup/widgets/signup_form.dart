import 'package:expense_tracker/features/authentication/controllers/signup/singup_controller.dart';

import 'package:expense_tracker/utils/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:expense_tracker/utils/constants/text_string.dart';
import 'package:get/get.dart';


import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final SignUpController controller = Get.put(SignUpController());
    return Form(
      key: controller.signupKey,
      child: Column(
        children: [
          /// -- First Name --
          TextFormField(
            controller: controller.firstName,
            validator: (value) =>
                PValidator.validateEmptyText('firstname', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: PTexts.firstName,
              prefixIcon: Icon(
                Iconsax.user,
                size: 19,
              ),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          /// -- Lastname --
          TextFormField(
            controller: controller.lastName,
            validator: (value) =>
                PValidator.validateEmptyText('Lastname', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: PTexts.lastName,
              prefixIcon: Icon(Iconsax.user_edit, size: 19),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          ///  -- Email --
          TextFormField(
            validator: (value) => PValidator.validateEmail(value),
            controller: controller.email,
            decoration: const InputDecoration(
              labelText: PTexts.email,
              prefixIcon: Icon(Iconsax.direct, size: 19),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          /// -- Phone Number --
          TextFormField(
            controller: controller.phoneNum,
            validator: (value) => PValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: PTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call, size: 19,
              ),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          /// -- Password --
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => PValidator.validatePassword(value),
              obscureText: controller.togglePassword.value,
              decoration: InputDecoration(
                labelText: PTexts.password,
                prefixIcon: const Icon(Iconsax.password_check, size: 19),
                
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.togglePassword.value =
                        !controller.togglePassword.value;
                  },
                  icon: Icon(
                    controller.togglePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye,
                  ),
                ),
              ),
            ),
          ),

          ///  -- Sign up Button --
          const SizedBox(
            height: PSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              // onPressed: () => Get.to(() => const VerifyEmailScreen()),
              onPressed: () => controller.signup(),
              child: const Text(PTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
