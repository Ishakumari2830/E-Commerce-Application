import 'package:e_comrc/common/widgets/appBar/appbar.dart';
import 'package:e_comrc/common/widgets/icons/t_circular_iconn.dart';
import 'package:e_comrc/common/widgets/images/t_rounded_images.dart';
import 'package:e_comrc/features/shop/screen/product_details/widget/product_detail_image_slider.dart';
import 'package:e_comrc/features/shop/screen/product_details/widget/product_meta_data.dart';
import 'package:e_comrc/features/shop/screen/product_details/widget/rating_share_widget.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../utils/contsants/colors.dart';
import '../../../../../utils/contsants/image_strings.dart';
import '../../../../../utils/contsants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///1 Product Image Slider
            TProductImageSlider(),

            ///2. Product Details
            Padding(
                padding: EdgeInsets.only(right: TSizes.defaultSpace,
                    left: TSizes.defaultSpace,
                    bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                ///Rating and share
                TratingAndShare(),
                ///Price,Title ,stock and brand
                TProductMetaData(),
                ///attributes
                ///checkout button
                ///description
                ///reviews

              ],
            ),)
          ],
        ),
      ),
    );
  }
}

