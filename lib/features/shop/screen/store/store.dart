import 'package:e_comrc/common/widgets/appBar/appbar.dart';
import 'package:e_comrc/common/widgets/custom_shapes/Container/search_container.dart';
import 'package:e_comrc/common/widgets/layout/grid_layout.dart';
import 'package:e_comrc/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_comrc/common/widgets/texts/section_heading.dart';
import 'package:e_comrc/features/shop/screen/store/widgets/category_tab.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appBar/tabbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../utils/contsants/colors.dart';
import '../../../../utils/contsants/sizes.dart';
class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            TCartCounterIcon(onPressed: (){} ),
          ],
        ),
        body: NestedScrollView(//fro horizontal and vertical scrooling
          headerSliverBuilder: (_,innerBoxScrolled){
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
                floating: true,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ///Search Bar
                      const SizedBox(
                        height: TSizes.spaceBtwItems,

                      ),
                      const TSearchContainer(text: 'Search in Store ', showBorder: true,showBackground: false,padding: EdgeInsets.zero,),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),
                      ///feature brand
                      TSectionheading(title: 'Featured Brands',showActionButton: true,onPressed: (){}),
                      const SizedBox(
                        height: TSizes.spaceBtwItems/1.5,

                      ),
                      TgridLayout(itemCount: 4,mainAxisExtent: 80, itemBuilder: (_ ,index){
                        return const TBrandCard(showBorder: false,);
                      })
                    ],
                  ),
                ),
                ///tabs
                bottom:  const TTabBar(tabs: [

                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    ),
                    Tab(
                      child: Text('Utensils'),
                    ),

                  ],
                ),
              )
            ];
          },
          body : const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),


            ],
          )

        ),
      ),
    );
  }
}

