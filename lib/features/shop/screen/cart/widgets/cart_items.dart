import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/ProductPriceText.dart';
import '../../../../../utils/contsants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButton=true});

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,//for visiblity of image
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),

      itemBuilder: (_,index)=> Column(

        children: [
          ///cart item
          const TCartItem(),
          if(showAddRemoveButton)
          const SizedBox(height: TSizes.spaceBtwItems,),

          ///Add remove button
          if(showAddRemoveButton)
          const Row(
            //mainAxisSize: MainAxisSize.min,

            children: [
              Row(
                children: [
                  ///extra space
                 // SizedBox(width: 90,),
                  ///add remove button
                  TProductQuantityWithAddAndRemove(),
                ],
              ),
              SizedBox(width: TSizes.spaceBtwItems,),

              TProductPriceText(price: '256')
            ],
          ),



        ],
      ),);

  }
}
