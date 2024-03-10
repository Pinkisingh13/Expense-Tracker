import 'package:expense_tracker/common/widgets/texts/titleandsubtitle.dart';
import 'package:expense_tracker/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:expense_tracker/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(PSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Icon, Title & Subtitle
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextTitleAndSloganWidget(
                    title: PTexts.forgetPasswordTitle,
                    subtitle: PTexts.forgetPasswordSubTitle,
                    setImage: false,
                    isAlign: true,
                    setFunc: true,
                    onPressed: () => Get.back(),
                  ),
                ),
                const SizedBox(
                  height: PSizes.spaceBtwSections * 2,
                ),

                /// -- Text Field --
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: PTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right),
                  ),
                ),
                const SizedBox(
                  height: PSizes.spaceBtwSections*1.7,
                ),

                /// -- Send Email --
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(()=> const ResetPassword()),
                    child: const Text(PTexts.submit),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
