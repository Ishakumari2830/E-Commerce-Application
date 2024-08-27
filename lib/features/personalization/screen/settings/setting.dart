import 'package:e_comrc/common/widgets/appBar/appbar.dart';
import 'package:e_comrc/common/widgets/custom_shapes/Container/primary_header_container.dart';
import 'package:e_comrc/common/widgets/images/t_circular_images.dart';
import 'package:e_comrc/common/widgets/texts/section_heading.dart';
import 'package:e_comrc/features/personalization/screen/address/addresses.dart';
import 'package:e_comrc/features/personalization/screen/profile/profile.dart';
import 'package:e_comrc/features/shop/screen/order/order.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/listTiles/setings_menu_tile.dart';
import '../../../../common/widgets/listTiles/user_profile_tile.dart';
import '../../../../utils/contsants/colors.dart';
import '../../../../utils/contsants/image_strings.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            TPrimaryHeaderConatiner(
              child: Column(
                children: [
                  ///AppBar
                  TAppBar(
                      title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  )),



                  ///User Profile Card
                  TUserProfileTile(onPressed : () => Get.to(()=> const ProfileScreen())),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            ///body
            Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///Account Setting
                  TSectionheading(title: 'Account Setting',showActionButton: false,),
                  SizedBox(height: TSizes.spaceBtwItems,),

                  TSettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subTitle: 'set shopping delivery address',
                    onTap: () => Get.to(()=> UserAddressScreen()),
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My cart',
                    subTitle: 'Add , remove products and move to checkOut',
                    onTap: (){},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In Progress and Completed Orders',
                    onTap: () => Get.to(()=> OrderScreen()),
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account ',
                    subTitle: 'Withdraw balance to registered bank account',
                    onTap: (){},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all discounted coupons',
                    onTap: (){},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification messages',
                    onTap: (){},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage Data usage and connected Accounts',
                    onTap: (){},
                  ),

                  ///App Settings
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSectionheading(title: 'App Settings',showActionButton: false,),
                  SizedBox( height: TSizes.spaceBtwSections,),
                  TSettingMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: ' Upload data to cloud Firestore'),
                  TSettingMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'set recommendation based on location',
                    trailing: Switch(
                      value: true,
                      onChanged: (value){},
                    ),
                    onTap: (){},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Searh result is safe for all ages',
                    trailing: Switch(
                      value: false,
                      onChanged: (value){},
                    ),
                    onTap: (){},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.image,
                    title: 'HD image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(
                      value: false,
                      onChanged: (value){},
                    ),
                    onTap: (){},
                  ),
                  ///logOut button
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: (){},
                      child: Text('LogOut'),
                    ),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections*2.5,
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

