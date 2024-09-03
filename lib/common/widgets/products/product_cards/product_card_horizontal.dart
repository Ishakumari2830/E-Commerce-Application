import 'package:e_comrc/common/widgets/custom_shapes/Container/rounded_container.dart';
import 'package:e_comrc/common/widgets/images/t_rounded_images.dart';
import 'package:e_comrc/common/widgets/texts/ProductPriceText.dart';
import 'package:e_comrc/common/widgets/texts/ProductTitleText.dart';
import 'package:e_comrc/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_comrc/utils/contsants/image_strings.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/contsants/colors.dart';
import '../../../../utils/contsants/sizes.dart';
import '../../icons/t_circular_iconn.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
    decoration: BoxDecoration(

    borderRadius: BorderRadius.circular(TSizes.productImageRadius),
    color: dark ? TColors.darkerGrey : TColors.softgrey,

    ),
      child: Row(
        children: [
          ///Thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                ///Thumbnail Image
                const SizedBox(
                    height:120,
                    width: 120,
                    child: TRoundedImage(imageurl: TImages.product4,applyImageRadius: true,)),

                ///sale tag
                Positioned(
                  top: 12,

                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
                    child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                  ),
                ),
                ///favourite icon button
                const Positioned(
                    top:0,right: 0,
                    child: TCircularIcon(icon: Iconsax.heart5,color: Colors.red,
                      height: 40,width:40 ,)),

              ],
            ),
          ),
          ///Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSizes.sm,left: TSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(title: 'White Nike half sleeve shirt',smallsize: true,),
                      SizedBox(height: TSizes.spaceBtwItems/2,),
                      TBrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///Pricing
                      const Flexible(child: TProductPriceText(price: '256.0 - 268.9')),
                      ///Add to cart
                      Container(
                        decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(TSizes.cardradiusMd),
                                bottomRight: Radius.circular(TSizes.productImageRadius)
                            )
                        ),
                        child: const SizedBox(
                            height: TSizes.iconLg*1.2,
                            width: TSizes.iconLg*1.2,
                            child: Center(
                                child: Icon(Iconsax.add ,color : TColors.white))),

                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
