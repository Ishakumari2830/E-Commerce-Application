import 'package:e_comrc/features/authentication/screens/password_configuration/reset%20password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/contsants/sizes.dart';
import '../../../../utils/contsants/text_strings.dart';

class forgotPassword extends StatelessWidget {
  const forgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            ///headings
            Text(
              TTexts.forgetPassword,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              TTexts.forgetPasswordSubtitle,
              style: Theme.of(context).textTheme.labelLarge,
            ),


            ///textField
            TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections ,
            ),

            ///submit Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.off(()=> const ResetPassword()), child: const Text(TTexts.submit)))
          ])),
    );
  }
}
