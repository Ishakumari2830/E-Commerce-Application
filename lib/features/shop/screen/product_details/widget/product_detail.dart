
import 'package:e_comrc/common/widgets/texts/section_heading.dart';
import 'package:e_comrc/features/shop/screen/product_details/widget/bottom_add_to_cart_widget.dart';
import 'package:e_comrc/features/shop/screen/product_details/widget/product_attributes.dart';
import 'package:e_comrc/features/shop/screen/product_details/widget/product_detail_image_slider.dart';
import 'package:e_comrc/features/shop/screen/product_details/widget/product_meta_data.dart';
import 'package:e_comrc/features/shop/screen/product_details/widget/rating_share_widget.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';


import '../../../../../utils/contsants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddtoCart(),
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
                TProductAttributes(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///checkout button
                SizedBox(
                    width : double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: Text('CheckOut'))),

                SizedBox(height: TSizes.spaceBtwSections,),
                ///description
                TSectionheading(title: 'Desription',showActionButton: false,),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                ReadMoreText(
                  'This is Product Description for White shoes,there are more things that can be added to this but i am not adding to it currently',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' Show More',
                  trimExpandedText: ' Show Less',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800
                  ),
                ),
                ///reviews
                const Divider(),
                SizedBox(height: TSizes.spaceBtwItems,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TSectionheading(title: 'Reviews(20)',showActionButton: false,),
                    IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_3,size: 18,))
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwSections,)

              ],
            ),)
          ],
        ),
      ),
    );
  }
}

