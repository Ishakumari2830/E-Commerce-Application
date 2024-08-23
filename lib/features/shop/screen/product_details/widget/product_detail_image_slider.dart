import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appBar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/t_circular_iconn.dart';
import '../../../../../common/widgets/images/t_rounded_images.dart';
import '../../../../../utils/contsants/colors.dart';
import '../../../../../utils/contsants/image_strings.dart';
import '../../../../../utils/contsants/sizes.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdges(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            ///Min Large Image
            SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(
                    image: AssetImage(TImages.product4),
                  )),
                )),

            ///Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => TRoundedImage(
                      width: 80,
                      backgroundColor: dark ? TColors.dark : TColors.white,
                      border: Border.all(color: TColors.primary),
                      padding: EdgeInsets.all(TSizes.sm),
                      imageurl: TImages.product5),
                ),
              ),
            ),

            ///AppBAr Icon
            TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
