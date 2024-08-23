import 'package:e_comrc/common/widgets/layout/grid_layout.dart';
import 'package:e_comrc/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_comrc/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/contsants/image_strings.dart';
import '../../../../../utils/contsants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
          child : Column(
            children: [
              ///Brands
              const TBrandShowcase(
                images: [
                  TImages.product4,
                  TImages.product5,
                  TImages.product6,
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),


              /// Products
              TSectionheading(title: 'You Might Like',showActionButton: true,onPressed: (){},),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TgridLayout(itemCount: 4,itemBuilder: (_,index)=> const TProductCardVertical(

              )),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              )


            ],
          )
      ),
  ]
    );
  }
}
