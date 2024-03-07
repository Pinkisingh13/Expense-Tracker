import 'package:expense_tracker/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/constants/sizes.dart';

class TextTitleAndSloganWidget extends StatelessWidget {
  const TextTitleAndSloganWidget({
    super.key,
    required this.title,
    required this.subtitle,
    this.image = PImages.gif,
    required this.setImage,
    required this.isAlign,
    this.onPressed,
    required this.setFunc,
  });

  final String title, subtitle, image;
  final bool setImage, isAlign, setFunc;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        setFunc
            ? IconButton(
                onPressed: onPressed,
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20,
                ),
              )
            : const SizedBox(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: PSizes.defaultSpace),
            child: Column(
              crossAxisAlignment:
                  isAlign ? CrossAxisAlignment.start : CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: PSizes.sm,
                ),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: PSizes.spaceBtwItems,
                ),
                setImage
                    ? Image.asset(
                        image,
                        fit: BoxFit.contain,
                        width: PHelperFunctions.screenWidth(),
                        height: PHelperFunctions.screenHeight() / 2.40,
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
