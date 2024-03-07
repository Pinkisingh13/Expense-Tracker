import 'package:expense_tracker/common/widgets/texts/titleandsubtitle.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:expense_tracker/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupTitleAndSubtitle extends StatelessWidget {
  const SignupTitleAndSubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            // color: PColors.white,
            size: 20,
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: PSizes.defaultSpace),
            child: TextTitleAndSloganWidget(
              title: PTexts.signupTitle,
              subtitle: PTexts.signupSubTitle,
              setImage: false,
              isAlign: true,
            ),
          ),
        ),
      ],
    );
  }
}

