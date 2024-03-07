import 'package:expense_tracker/utils/constants/colors.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:expense_tracker/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// Email Id
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
    
          /// Password
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
    
          /// Forgot password
          const SizedBox(
            height: PSizes.spaceBtwSections,
          ),
          Text(
            PTexts.forgetPassword,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: PColors.primary),
          ),
    
          /// Login Buttons
          const SizedBox(
            height: PSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // controller.signup();
              },
              child: const Text(PTexts.loginTitle),
            ),
          ),
        ],
      ),
    );
  }
}
