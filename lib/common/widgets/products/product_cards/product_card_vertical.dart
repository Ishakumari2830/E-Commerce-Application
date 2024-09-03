import 'package:e_comrc/common/widgets/custom_shapes/Container/rounded_container.dart';
import 'package:e_comrc/common/widgets/images/t_rounded_images.dart';
import 'package:e_comrc/features/shop/screen/product_details/widget/product_detail.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/contsants/colors.dart';
import '../../../../utils/contsants/image_strings.dart';
import '../../../../utils/contsants/sizes.dart';
import '../../../styles/shadows.dart';
import '../../icons/t_circular_iconn.dart';
import '../../texts/ProductPriceText.dart';
import '../../texts/ProductTitleText.dart';
import '../../texts/t_brand_title_text_with_verified_icon.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(()=> const ProductDetailScreen()),
      child: Container(
          width: 180,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkerGrey : TColors.white,
      
          ),
          child: Column(
            children: [
              ///thumbnail,wishlist button and discount tag
              TRoundedContainer(
                height: 180,
                padding: const EdgeInsets.all(TSizes.sm),
                backgroundColor: dark ? TColors.dark : TColors.light,
                child: Stack(
                  children: [
                    const TRoundedImage(imageurl: TImages.product4,applyImageRadius: true,),
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
                      height: 40,width:40 ,))
      
                  ],
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems/2,
              ),
      
              ///details
          const Padding(padding: EdgeInsets.only(left: TSizes.sm),
              child : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title : 'black-white Adidas shoe',smallsize: true,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems/2,
                  ),
                  TBrandTitleWithVerifiedIcon(
                    title: 'Adidas',
                  ),
      
                ],
              )
          ),
              // Todo : Add Spacer here to keep the height of each box same in case 1 or 2 lines of headings
              const Spacer(),
      
      
              /// Price Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///price
                  const Padding(
                    padding: EdgeInsets.only(left: TSizes.sm),
                    child: TProductPriceText(
                      price: '35.0',isLarge: true,
                    ),
                  ),
                  ///add to cart button
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
      
                  )
                ],
              ),
      
      
      
      
            ],
          ),
      
        ),
    );
    
  }
}




