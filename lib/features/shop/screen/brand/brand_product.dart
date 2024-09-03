import 'package:e_comrc/common/widgets/appBar/appbar.dart';
import 'package:e_comrc/common/widgets/brands/brand_card.dart';
import 'package:e_comrc/common/widgets/products/sortable/sortableProducts.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:flutter/material.dart';
class BrandProducts  extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    appBar: TAppBar(
    title: Text('Nike'),

    ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///Brand detail
            TBrandCard(showBorder: true),
            SizedBox(height: TSizes.spaceBtwSections,),

            TSortableProducts(),
          ],
        ),),
      ),


    );
  }
}
