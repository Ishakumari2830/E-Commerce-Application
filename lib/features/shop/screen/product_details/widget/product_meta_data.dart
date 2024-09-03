import 'package:e_comrc/common/widgets/images/t_circular_images.dart';
import 'package:e_comrc/common/widgets/texts/ProductPriceText.dart';
import 'package:e_comrc/common/widgets/texts/ProductTitleText.dart';
import 'package:e_comrc/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_comrc/utils/contsants/enums.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/Container/rounded_container.dart';
import '../../../../../utils/contsants/colors.dart';
import '../../../../../utils/contsants/image_strings.dart';
import '../../../../../utils/contsants/sizes.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Price  & sale price
        Row(
          children: [
            ///Sale tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
              child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
            ),
            const SizedBox(width: TSizes.spaceBtwItems,),

            ///price
            Text('\$250',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSizes.spaceBtwItems,),
            const TProductPriceText(price: '175',isLarge: true,)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),
        ///title
        const TProductTitleText(title: 'Green Adidas Shoe'),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),

        ///stock status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('In Stock',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems/1.5,),
        ///Brand
        Row(
          children: [
            TCircularImage(image: TImages.sportIcon,
            height: 32,
            width: 32,
            overlayColor: dark ? TColors.white: TColors.black,),
            const TBrandTitleWithVerifiedIcon(title: 'Adidas',brandtextSizes: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}
