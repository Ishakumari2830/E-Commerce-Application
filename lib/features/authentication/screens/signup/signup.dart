
import 'package:e_comrc/features/authentication/screens/signup/widgets/signUp_form.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/contsants/sizes.dart';
import '../../../../utils/contsants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(

      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title
              Text(TTexts.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),

              const SizedBox(height: TSizes.spaceBtwSections),

              ///Form
              const TSignUpForm(),
              ///divider
              TFormDivider(dividerText: TTexts.orsignUpWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///social buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

