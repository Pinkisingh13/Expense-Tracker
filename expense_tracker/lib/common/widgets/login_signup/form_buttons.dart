import 'package:expense_tracker/utils/constants/colors.dart';
import 'package:expense_tracker/utils/constants/image_string.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PSocialButtons extends StatelessWidget {
  const PSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: PColors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: const Image(
              height: PSizes.iconMd,
              width: PSizes.iconMd,
              image: AssetImage(
                PImages.google,
              ),
            ),
            onPressed: () {},
            // onPressed: () => controller.googleSignIn(),
          ),
        ),
        const SizedBox(
          width: PSizes.spaceBtwSections,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: PColors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: const Image(
              height: PSizes.iconMd,
              width: PSizes.iconMd,
              image: AssetImage(
                PImages.facebook,
              ),
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          width: PSizes.spaceBtwItems,
        ),
      ],
    );
  }
}


