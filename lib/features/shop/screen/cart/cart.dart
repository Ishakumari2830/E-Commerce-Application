import 'package:e_comrc/common/widgets/appBar/appbar.dart';
import 'package:e_comrc/features/shop/screen/cart/widgets/cart_items.dart';
import 'package:e_comrc/features/shop/screen/checkOut/checkOut.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Cart',style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        ///Items in cart
        child: TCartItems(),
      ),
      ///checkout button
      bottomNavigationBar: Padding(
        padding:  const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(()=>const CheckoutScreen()),child: const Text('CheckOut \$ 256.0'),),
      ),
    );
  }
}


