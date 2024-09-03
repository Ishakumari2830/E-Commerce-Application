import 'package:e_comrc/common/widgets/custom_shapes/Container/rounded_container.dart';
import 'package:e_comrc/common/widgets/success_screen/sucess_screen.dart';
import 'package:e_comrc/features/shop/screen/cart/widgets/cart_items.dart';
import 'package:e_comrc/features/shop/screen/checkOut/widgets/billing_address_section.dart';
import 'package:e_comrc/features/shop/screen/checkOut/widgets/billing_amount_section.dart';
import 'package:e_comrc/features/shop/screen/checkOut/widgets/billing_payment_section.dart';
import 'package:e_comrc/navigationMenu.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appBar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../utils/contsants/colors.dart';
import '../../../../utils/contsants/image_strings.dart';
import '../../../../utils/contsants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Order Review',style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Items in the cart
              const TCartItems(showAddRemoveButton: false,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Coupon TextField
              const TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Billing section
              TRoundedContainer(
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                padding: const EdgeInsets.all(TSizes.md),
                child: const Column(
                  children: [
                    ///Pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    ///Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    ///payment methods
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    ///address
                    TBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      ///CheckOut Button
   
      bottomNavigationBar: Padding(
        padding:  const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SucessScreen(image: TImages.successfulPaymentIcon,
          title: 'Payment Successful',
          subtitle: 'Your Item will be shipped soon',
          onPressed: ()=> Get.offAll(()=> const NavigationMenu()),)),
          child: const Text('CheckOut \$ 256.0'),
        ),
      ),
    );
  }
}

