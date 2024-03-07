import 'package:expense_tracker/common/widgets/texts/titleandsubtitle.dart';
import 'package:expense_tracker/utils/constants/colors.dart';
import 'package:expense_tracker/utils/constants/text_string.dart';
import 'package:flutter/material.dart';

class WelcomeTitleWidget extends StatelessWidget {
  const WelcomeTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: PColors.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: const Center(
        heightFactor: 1.2,
        widthFactor: double.infinity,
        child: TextTitleAndSloganWidget(
          setFunc: false,
          isAlign: false,
          subtitle: PTexts.appsubTitle,
          title: PTexts.appName,
          setImage: true,
        ),
      ),
    );
  }
}

