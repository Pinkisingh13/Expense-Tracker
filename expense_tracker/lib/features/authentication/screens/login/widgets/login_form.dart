import 'package:expense_tracker/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:expense_tracker/navigation_menu.dart';
import 'package:expense_tracker/utils/constants/colors.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:expense_tracker/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class PLoginForm extends StatelessWidget {
  const PLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          ///  -- EmailId --
          TextFormField(
            // validator: (value) =>
            //     TValidator.validateEmptyText('first name', value),
            // controller: controller.firstName,
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
          TextFormField(
            // validator: (value) =>
            //     TValidator.validateEmptyText('first name', value),
            // controller: controller.firstName,
            expands: false,
            decoration: InputDecoration(
              labelText: PTexts.password,
              prefixIcon: const Icon(
                Iconsax.user,
                size: 19,
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                // controller.togglePassword.value =
                //     !controller.togglePassword.value,
                icon: const Icon(
                  // controller.togglePassword.value
                  //     ? Iconsax.eye_slash
                  //     : Iconsax.eye,
                  Iconsax.eye,
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
                // controller.signup();
                Get.to(()=> const NavigationMenu());
              },
              child: const Text(PTexts.loginTitle),
            ),
          ),
        ],
      ),
    );
  }
}
