import 'package:flutter/material.dart';
import 'package:expense_tracker/common/widgets/login_signup/form_buttons.dart';
import 'package:expense_tracker/common/widgets/login_signup/form_divider.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:expense_tracker/utils/constants/text_string.dart';

import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              /// -- First Name --
              Expanded(
                child: TextFormField(
                  // validator: (value) =>
                  //     TValidator.validateEmptyText('first name', value),
                  // controller: controller.firstName,
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: PTexts.firstName,
                    prefixIcon: Icon(
                      Iconsax.user,
                      size: 19,
                    ),
                  ),
                ),
              ),

              /// -- Last Name --
              const SizedBox(
                width: PSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  // controller: controller.lastName,
                  // validator: (value) =>
                  //     PValidator.validateEmptyText('last name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: PTexts.lastName,
                    prefixIcon: Icon(Iconsax.user, size: 19),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          /// -- Username --
          TextFormField(
            // controller: controller.userName,
            // validator: (value) =>
            //     PValidator.validateEmptyText(
            //         'username', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: PTexts.username,
              prefixIcon: Icon(Iconsax.user_edit, size: 19),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          //  -- Email --
          TextFormField(
            // validator: (value) =>
            //     TValidator.validateEmail(value),
            // controller: controller.email,
            decoration: const InputDecoration(
              labelText: PTexts.email,
              prefixIcon: Icon(Iconsax.direct, size: 19),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          // -- Phone Number --
          TextFormField(
            // controller: controller.phoneNumber,
            // validator: (value) =>
            //     PValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: PTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call, size: 19),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          // -- Password --
          TextFormField(
            // controller: controller.password,
            // validator: (value) =>
            //     TValidator.validatePassword(value),
            // obscureText: controller.togglePassword.value,
            decoration: InputDecoration(
              labelText: PTexts.password,
              prefixIcon: const Icon(Iconsax.password_check, size: 19),
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

          //  -- Sign up Button --
          const SizedBox(
            height: PSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // controller.signup();
              },
              child: const Text(PTexts.createAccount),
            ),
          ),

          /// -- Divider --
          const SizedBox(
            height: PSizes.spaceBtwSections,
          ),
          const PFormDivider(),

          /// -- Social Buttons --
          const SizedBox(
            height: PSizes.spaceBtwSections,
          ),
          const PSocialButtons(),
        ],
      ),
    );
  }
}
