
import 'package:e_comrc/common/widgets/texts/t_brand_title_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/contsants/colors.dart';
import '../../../utils/contsants/enums.dart';
import '../../../utils/contsants/sizes.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
 this.maxLines =1,
    this.textCOlor,
    this.iconColor= TColors.primary,
    this.textAlign= TextAlign.center,
     this.brandtextSizes = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textCOlor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandtextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: TBrandTitleText(title: title,
        color: textCOlor,
        maxLines: maxLines,
        textAlign: textAlign,
        brandTextSizes: brandtextSizes,)),
        const SizedBox(
          height: TSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: TSizes.iconXs,
        )
      ],
    );
  }
}
