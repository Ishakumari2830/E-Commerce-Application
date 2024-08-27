import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/contsants/sizes.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionheading(title: 'Shipping Address',buttonTitle: 'Change',onPressed: (){},),
        Text('Isha Gupta',style: Theme.of(context).textTheme.bodyLarge,),
        SizedBox(height: TSizes.spaceBtwItems/2,),

        Row(
          children: [
            Icon(Icons.phone,color: Colors.grey,size: 16,),
            SizedBox(width: TSizes.spaceBtwItems,),
            Text('+919572323234',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/2,),

        Row(
          children: [
            Icon(Icons.location_history,color: Colors.grey,size: 16,),
            SizedBox(width: TSizes.spaceBtwItems,),
            Expanded(child: Text('Gupta Vastralaya Main Road Garhwa,Jharkhand',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,))
          ],
        ),

      ],
    );
  }
}
