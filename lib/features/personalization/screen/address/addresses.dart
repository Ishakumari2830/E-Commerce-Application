import 'package:e_comrc/common/widgets/appBar/appbar.dart';
import 'package:e_comrc/common/widgets/custom_shapes/Container/rounded_container.dart';
import 'package:e_comrc/features/personalization/screen/address/widgets/add_new-address.dart';
import 'package:e_comrc/features/personalization/screen/address/widgets/single_address.dart';
import 'package:e_comrc/utils/contsants/colors.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
          onPressed: () => Get.to(()=> AddNewAddressScreen()),
      child: Icon(Iconsax.add,color: TColors.white,),),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Addresses',style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
             TSingleAddress(selectedAddress: false),
              TSingleAddress(selectedAddress: true)
            ],
          ),
        ),
      ),
    );
  }
}

