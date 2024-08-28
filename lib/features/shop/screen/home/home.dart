import 'package:e_comrc/features/shop/screen/all_products/all_products.dart';
import 'package:e_comrc/features/shop/screen/home/widgets/home_appbar.dart';
import 'package:e_comrc/features/shop/screen/home/widgets/home_categories.dart';
import 'package:e_comrc/features/shop/screen/home/widgets/promo_slider.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/widgets/custom_shapes/Container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/Container/search_container.dart';

import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/contsants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   ///appbar cant be wrapped with padding or any container or widget so we will create  custom appBar for any widget
      //
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///header
            const TPrimaryHeaderConatiner(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///appbar
                THomeAppbar(),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                /// SearchBar
                TSearchContainer(
                  text: ' Search in Store',
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// Categories
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      ///heading
                      TSectionheading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      ///Categories
                      THomecategorie(),
                    ],
                  ),
                ),
                SizedBox(height: TSizes.spaceBtwSections,)
              ],
            )),
            ///Body
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    const TPromoSlider(
                      banners: [
                        TImages.promoBanner1,
                        TImages.promoBanner2,
                        TImages.promoBanner3
                      ]
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    ///HEADING
                    TSectionheading(title: 'Popular products',onPressed: () => Get.to(()=> AllProducts())),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    ///popular products
                    TgridLayout(itemCount: 2,itemBuilder: (_,index)=> const TProductCardVertical(),),

                  ],
                )),
          ],
        ),
      ),
    );
  }
}



