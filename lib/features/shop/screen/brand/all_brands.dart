import 'package:e_comrc/common/widgets/appBar/appbar.dart';
import 'package:e_comrc/common/widgets/brands/brand_card.dart';
import 'package:e_comrc/common/widgets/layout/grid_layout.dart';
import 'package:e_comrc/common/widgets/products/sortable/sortableProducts.dart';
import 'package:e_comrc/common/widgets/texts/section_heading.dart';
import 'package:e_comrc/features/shop/screen/brand/brand_product.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandScreen extends StatelessWidget {
  const AllBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(
        title: Text('Brands'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child:Column(
          children: [
            ///Heading
            const TSectionheading(title: 'Brands'),
            const SizedBox(height: TSizes.spaceBtwItems,),

            ///Brands
            TgridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) =>
                      TBrandCard(showBorder: true,
                      OnTap: () => Get.to(() => const BrandProducts()),),
                )
              ],
        )),
      ),
    );
  }
}
