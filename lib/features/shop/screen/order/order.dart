import 'package:e_comrc/common/widgets/appBar/appbar.dart';
import 'package:e_comrc/features/shop/screen/order/widget/order_list.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('My Orders',style: Theme.of(context).textTheme.headlineSmall),

      ),
      body:  const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        /// Orders
      child: TOrderListItems(),


      ),
    );
  }
}
