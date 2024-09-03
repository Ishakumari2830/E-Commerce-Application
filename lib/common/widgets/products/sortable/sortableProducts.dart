import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/contsants/sizes.dart';
import '../../layout/grid_layout.dart';
import '../product_cards/product_card_vertical.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          onChanged: (value){},
          //items always take list of dropdown menu item,so will call it using map
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) => DropdownMenuItem(value: option,child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        ///products
        TgridLayout(itemCount: 4, itemBuilder: (_,index) => const TProductCardVertical()),
      ],
    );
  }
}
