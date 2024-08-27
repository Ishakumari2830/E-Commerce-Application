import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text('SubTotal',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$ 256.0',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/2,),

        ///Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text('Shipping fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$ 6.0',style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),

        SizedBox(height: TSizes.spaceBtwItems/2,),

        ///tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text('Tax Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$ 6.0',style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/2,),

        ///Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text('Order Total',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$ 268.0',style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),


      ],
    );
  }
}
