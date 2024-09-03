import 'package:e_comrc/common/widgets/custom_shapes/Container/rounded_container.dart';
import 'package:e_comrc/common/widgets/texts/section_heading.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/contsants/colors.dart';
import '../../../../../utils/contsants/image_strings.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionheading(title: 'Payment Method',buttonTitle: 'Change',onPressed: (){},),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            TRoundedContainer(
              width:60,
              height: 35,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(image : AssetImage(TImages.Paypal),
                fit: BoxFit.contain,

              ),


            ),
            const SizedBox(height: TSizes.spaceBtwItems/2,),
            Text('paypal',style: Theme.of(context).textTheme.bodyLarge,)


          ],
        )
      ],
    );

  }
}


