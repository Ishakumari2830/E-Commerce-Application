import 'package:e_comrc/common/widgets/appBar/appbar.dart';
import 'package:e_comrc/common/widgets/images/t_rounded_images.dart';
import 'package:e_comrc/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_comrc/common/widgets/texts/section_heading.dart';
import 'package:e_comrc/utils/contsants/image_strings.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(title: Text( 'Sports '),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///Banner
            TRoundedImage(imageurl: TImages.promoBanner1,width: double.infinity,applyImageRadius: true,),
            SizedBox(height: TSizes.spaceBtwSections,),

            ///Sub -Categories
            Column(
              children: [
                ///Heading
                TSectionheading(title: 'Sports Shirts',onPressed: (){},),
                SizedBox(height: TSizes.spaceBtwItems/2,),

                SizedBox(
                  height: 120,
                  child: ListView.separated(itemCount:4,
                      scrollDirection:Axis.horizontal,
                      separatorBuilder: (context,index) => SizedBox(width: TSizes.spaceBtwItems,),
                      itemBuilder: (context,index)=> TProductCardHorizontal()),
                ),
              ],
            )
          ],
        ),),
      ),
    );
  }
}
