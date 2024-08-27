import 'package:e_comrc/common/widgets/appBar/appbar.dart';
import 'package:e_comrc/common/widgets/icons/t_circular_iconn.dart';
import 'package:e_comrc/common/widgets/images/t_rounded_images.dart';
import 'package:e_comrc/common/widgets/texts/ProductPriceText.dart';
import 'package:e_comrc/common/widgets/texts/ProductTitleText.dart';
import 'package:e_comrc/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../utils/contsants/colors.dart';
import '../../../../utils/contsants/image_strings.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Cart',style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
           shrinkWrap: true,//for visiblity of image
            separatorBuilder: (_, __) => SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
            itemCount: 4,
          itemBuilder: (_,index)=> Column(
            children: [
              TCartItem(),
              SizedBox(height: TSizes.spaceBtwItems,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  ///extra space
                  SizedBox(width: 70,),
                  ///add remove button
                  TProductQuantityWithAddAndRemove(),
                ],
              ),

              TProductPriceText(price: '256')
              ],
          ),



            ],
          ),),
      ),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){},child: Text('CheckOut \$ 256.0'),),
      ),
    );
  }
}


