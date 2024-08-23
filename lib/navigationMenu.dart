import 'package:e_comrc/features/personalization/screen/settings/setting.dart';
import 'package:e_comrc/features/shop/screen/home/home.dart';
import 'package:e_comrc/features/shop/screen/wishlist/wishlist.dart';
import 'package:e_comrc/utils/contsants/colors.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shop/screen/store/store.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(///this is ovserver

        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value=index,
          backgroundColor: dark ? TColors.black : TColors.white,
          indicatorColor: dark ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),
          destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
         NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
         NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile')
        ],
        
        ),
      ),
      body: Obx(
          () =>controller.screens[controller.selectedIndex.value]),
    );
  }
}
///note : when setstaete is called,redrawing is happened agn n agn that slow application in sttful widget , so we use getx
class NavigationController extends GetxController{//inorder to ignore statefulll widget
  final Rx<int> selectedIndex =0.obs; //obs variable is ovsereved variable,observed by widget,
  ///this is what is being observed by the observser

 final screens = [
   const HomeScreen(),//homescreen
   const Store(),//store
   const FavouriteScreen(),//wishlist
   const SettingScreen(),//profile
   
 ];
}
