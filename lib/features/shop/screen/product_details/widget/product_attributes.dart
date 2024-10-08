import 'package:e_comrc/common/widgets/custom_shapes/Container/rounded_container.dart';
import 'package:e_comrc/common/widgets/texts/ProductPriceText.dart';
import 'package:e_comrc/common/widgets/texts/ProductTitleText.dart';
import 'package:e_comrc/common/widgets/texts/section_heading.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chips.dart';
import '../../../../../utils/contsants/colors.dart';
import '../../../../../utils/contsants/sizes.dart';
class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        ///Selected Attributes Pricing & description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              ///Title,price and stockItems
              Row(
                children: [
                  const TSectionheading(title: 'Variation',showActionButton: false,),
                  const SizedBox(width: TSizes.spaceBtwItems,),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: 'Price : ',smallsize: true,),
                          const SizedBox(width: TSizes.spaceBtwItems,),
                          ///Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration : TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems,),

                          ///Sale Price
                          const TProductPriceText(price: '20'),

                        ],
                      ),
                      ///Stock
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock : ',smallsize: true,),
                          const SizedBox(width: TSizes.spaceBtwItems,),

                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium
                          ),


                        ],
                      )

                    ],
                  ),

                 
                  
                ],
                
              ),
              ///Variation Description
              const TProductTitleText(title: "This is the Description of the product and it can upto max 4 lines",
                smallsize: true,
                maxlines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        ///Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionheading(title: 'Colors',showActionButton: false,),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
          Wrap(//in a row and for exceed limit, push to next line
            spacing: 6,
            children: [
              TChoiceChip(text: 'White',selected: true,onSelected: (value){},),
              TChoiceChip(text: 'Blue',selected: false,onSelected: (value){}),

              TChoiceChip(text: 'Red',selected:false,onSelected: (value){}),

            ],
          )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 6,
              children: [
                const TSectionheading(title: 'Sizes'),
                const SizedBox(height: TSizes.spaceBtwItems/2,),
                TChoiceChip(text: 'UK 5',selected: true,onSelected: (value){}),
                TChoiceChip(text: 'UK 6',selected: false,onSelected: (value){}),
                TChoiceChip(text: 'UK 7',selected: false,onSelected: (value){}),
                TChoiceChip(text: 'UK 8',selected:false,onSelected: (value){}),
              ],
            ),


          ],
        )
      ],
    );
  }
}

