import 'package:e_comrc/common/widgets/custom_shapes/Container/rounded_container.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/contsants/colors.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (_,__)=> SizedBox(height: TSizes.spaceBtwItems,),
     itemBuilder: (_,index) => TRoundedContainer(
        showBorder: true,
        padding: EdgeInsets.all(TSizes.md),
        backgroundColor:dark? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///Row1
            Row(
              children: [
                ///1 Icon
                Icon(Iconsax.ship),
                SizedBox(width: TSizes.spaceBtwItems/2,),

                ///2. Status and Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing',
                      style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary,fontWeightDelta: 1),),
                      Text('28 Nov 2023',style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ),
                ///3.Icon
                IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34,size: TSizes.iconSm,))
              ],
            ),
            SizedBox(height: TSizes.spaceBtwItems,),
            ///Row 2
            Row(
              children: [
                Expanded(

                  child: Row(
                    children: [
                      ///1 Icon
                      Icon(Iconsax.tag),
                      SizedBox(width: TSizes.spaceBtwItems/2,),

                      ///2. Status and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',
                              style: Theme.of(context).textTheme.labelMedium ),
                            Text('[Order Id : #23fk45]',style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
                      ///3.Icon

                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      ///1 Icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: TSizes.spaceBtwItems/2,),

                      ///2. Status and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping date',
                                style: Theme.of(context).textTheme.labelMedium ),
                            Text('03 Dec 2023',style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
                      ///3.Icon

                    ],
                  ),
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
