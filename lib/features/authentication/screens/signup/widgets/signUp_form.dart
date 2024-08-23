import 'package:e_comrc/features/authentication/screens/signup/verify_email.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/contsants/colors.dart';
import '../../../../../utils/contsants/sizes.dart';
import '../../../../../utils/contsants/text_strings.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              //note : in general we cant use 2 textformfield in a row, so for that we use expand widget
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.user),
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          ///Username
          TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.userName,
                prefixIcon: Icon(Iconsax.user_edit),
              )),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          ///email
          TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct),
              )),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          ///phone number
          TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.phoneNumber,
                prefixIcon: Icon(Iconsax.call),
              )),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          ///password
          TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash))),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          ///terms and coditions Checkbox
          Row(
            children: [
              SizedBox(
                  width: 24,
                  height: 24,
                  child: Checkbox(value: true, onChanged: (value) {})),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: '${TTexts.iAgreeTo} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${TTexts.privacyPolicy} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? TColors.white : TColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? TColors.white : TColors.primary,
                        )),
                TextSpan(
                    text: '${TTexts.and} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: TTexts.termsOfUse,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? TColors.white : TColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? TColors.white : TColors.primary,
                        )),
              ]))
            ],
          ),

          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          ///signup button
          SizedBox(
            //for any button making full width
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const verifyEmailScreen()),
              child: const Text(TTexts.createAccount),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
        ],
      ),
    );
  }
}
