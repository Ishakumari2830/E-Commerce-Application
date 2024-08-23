import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_comrc/features/shop/contollers/home_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/Container/circular_containers.dart';
import '../../../../../common/widgets/images/t_rounded_images.dart';
import '../../../../../utils/contsants/colors.dart';
import '../../../../../utils/contsants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banners,
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeContoller());
    return Column(//wraping with col to show slider imapact just below carousel
      children: [
        CarouselSlider(//used for infinite slider
          options: CarouselOptions(
            viewportFraction: 1,

            onPageChanged: (index,_) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => TRoundedImage( imageurl: url,)).toList()
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(()=>
            Row(
              mainAxisSize: MainAxisSize.min,

              children: [
                for(int i =0;i<banners.length;i++)
                TCircularWidget(
                  height: 4,
                  width: 20,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundcolor: controller.carouselCurrentIndex.value==i ? TColors.primary : TColors.grey,
                ),
              ],
            ),
          ),
        )

      ],
    );
  }
}

