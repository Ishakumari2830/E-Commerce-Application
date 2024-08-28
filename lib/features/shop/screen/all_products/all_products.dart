import 'package:e_comrc/common/widgets/appBar/appbar.dart';
import 'package:e_comrc/common/widgets/layout/grid_layout.dart';
import 'package:e_comrc/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,

      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///dropdown
            DropdownButtonFormField(
              decoration: InputDecoration(
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
            SizedBox(height: TSizes.spaceBtwItems,),
            ///products
            TgridLayout(itemCount: 4, itemBuilder: (_,index) => TProductCardVertical()),
            ],
          ),),
      ),
    );
  }
}
