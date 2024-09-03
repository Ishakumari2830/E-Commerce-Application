import 'package:e_comrc/common/widgets/appBar/appbar.dart';
import 'package:e_comrc/common/widgets/icons/t_circular_iconn.dart';
import 'package:e_comrc/common/widgets/layout/grid_layout.dart';
import 'package:e_comrc/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_comrc/features/shop/screen/home/home.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: TAppBar(
     title: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium,),
     actions: [
       TCircularIcon(icon: Iconsax.add,onPressed: ()=> Get.to(const HomeScreen()),)

     ],
   ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TgridLayout(
                itemCount: 1,
                itemBuilder: (_ , index)=> const TProductCardVertical(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
