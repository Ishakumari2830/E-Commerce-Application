import 'package:flutter/material.dart';

import '../../../../utils/contsants/colors.dart';
import '../../../../utils/contsants/image_strings.dart';
import '../../../../utils/contsants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/t_rounded_images.dart';
import '../../texts/ProductTitleText.dart';
import '../../texts/t_brand_title_text_with_verified_icon.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        ///image
        Flexible(
          child: TRoundedImage(imageurl: TImages.product4,
              width: 60,
              height: 60,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: THelperFunctions.isDarkMode(context) ?  TColors.darkerGrey : TColors.light),
        ),
        SizedBox(width: TSizes.spaceBtwItems,),

        ///title ,price and size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TBrandTitleWithVerifiedIcon(title: 'Nike',),
              Flexible(child: TProductTitleText(title: 'White Sports shoes',maxlines: 1,)),
              ///Attributes

              Text.rich(
                  TextSpan(
                      children:
                      [
                        TextSpan(text: 'Color',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: ' Green',style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: ' ,Size',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: ' UK6',style: Theme.of(context).textTheme.bodyLarge)
                      ]
                  )
              )
            ],
          ),
        )

      ],
    );
  }
}
