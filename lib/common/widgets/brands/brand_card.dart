import 'package:flutter/material.dart';

import '../../../utils/contsants/colors.dart';
import '../../../utils/contsants/enums.dart';
import '../../../utils/contsants/image_strings.dart';
import '../../../utils/contsants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/Container/rounded_container.dart';
import '../images/t_circular_images.dart';
import '../texts/t_brand_title_text_with_verified_icon.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
    this.OnTap,
  });
  final bool showBorder;
  final void Function()? OnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: true,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// Icon
            Flexible(//take the space required
              child: TCircularImage(
                isNetwrokImage: false,
                image: TImages.dressIcon,
                backgroundColor: Colors.transparent,
                overlayColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,

              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems/2,
            ),

            ///Text
            Expanded(//take max space
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(title: 'H & M',brandtextSizes: TextSizes.large,),
                  Text(
                    '256 Products',
                    overflow : TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

