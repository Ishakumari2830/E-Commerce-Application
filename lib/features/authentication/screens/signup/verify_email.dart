import "package:e_comrc/common/widgets/success_screen/sucess_screen.dart";
import "package:e_comrc/utils/helpers/helper_functions.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "../../../../utils/contsants/image_strings.dart";
import "../../../../utils/contsants/sizes.dart";
import "../../../../utils/contsants/text_strings.dart";
import "../login/login.dart";
class verifyEmailScreen extends StatelessWidget {
  const verifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.offAll(()=> const LoginScreen()), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(image: const AssetImage(TImages.verifyIllustration),width: THelperFunctions.screenWidth()*0.6,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              ///title and subtitle
              Text(TTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text('isha@gmail.com',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.confirmEmailSubtitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              ///buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=> Get.to(()=> SucessScreen(
                    image: TImages.SuccesIllustration,
                    title: TTexts.yourAccountCreatedTitle,
                    subtitle: TTexts.yourAccountCreatedSubtitle,
                    onPressed: () => Get.to(()=> const LoginScreen()),
                  )),
                  child: const Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){},
                  child: const Text(TTexts.resendEmail),
                ),
              )


            ],
          ),
        ),
      )
      ,

    );
  }
}
