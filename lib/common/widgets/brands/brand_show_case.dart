import 'package:flutter/material.dart';

import '../../../utils/contsants/colors.dart';
import '../../../utils/contsants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/Container/rounded_container.dart';
import 'brand_card.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key, required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkgrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      padding: const EdgeInsets.all(TSizes.md),
      child: Column(
        children: [
          ///Brand with Products count
          const TBrandCard(showBorder: false),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          /// Brands Top 3 images
          Row(
              children: images.map((image)=> BrandTopProductImageWidget(image, context)).toList(

              )
          )
        ],
      ),
    );
  }


  Widget BrandTopProductImageWidget(String image,context){
    return  Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        child: Image(fit : BoxFit.contain,image:  AssetImage(image),),
      ),
    );
  }
}
