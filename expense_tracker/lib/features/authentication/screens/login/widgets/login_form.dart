import 'package:expense_tracker/features/authentication/controllers/login/login_controller.dart';
import 'package:expense_tracker/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:expense_tracker/navigation_menu.dart';
import 'package:expense_tracker/utils/constants/colors.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:expense_tracker/utils/constants/text_string.dart';
import 'package:expense_tracker/utils/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconsax/iconsax.dart';

class PLoginForm extends StatelessWidget {
  const PLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginKey,
      child: Column(
        children: [
          ///  -- EmailId --
          TextFormField(
            validator: (value) => PValidator.validateEmail(value),
            controller: controller.email,
            expands: false,
            decoration: const InputDecoration(
              labelText: PTexts.email,
              prefixIcon: Icon(
                Iconsax.user,
                size: 19,
              ),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          /// -- Password --
          Obx(
            () => TextFormField(
              validator: (value) => PValidator.validatePassword(value),
              controller: controller.password,
              expands: false,
              obscureText: controller.togglePassword.value,
              decoration: InputDecoration(
                labelText: PTexts.password,
                prefixIcon: const Icon(
                  Iconsax.user,
                  size: 19,
                ),
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

          /// -- Forgot password --
          const SizedBox(
            height: PSizes.spaceBtwItems,
          ),
          TextButton(
            onPressed: () {
              Get.to(() => const ForgetPassword());
            },
            child: Text(
              PTexts.forgetPassword,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: PColors.primary),
            ),
          ),

          /// -- Login Button --
          const SizedBox(
            height: PSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                controller.login();          
              },
              child: const Text(PTexts.loginTitle),
            ),
          ),
        ],
      ),
    );
  }
}
