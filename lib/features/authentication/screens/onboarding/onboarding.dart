


import 'package:e_comrc/utils/contsants/image_strings.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/contsants/text_strings.dart';
import '../../controllers/onboarding/onboarding_controller.dart';
import 'widgets/OnBoardingDotNavigation.dart';
import 'widgets/OnBoardingNextButton.dart';
import 'widgets/OnBoardingSkip.dart';
import 'widgets/onboarding_page.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(children: [
        ///horizontal scrollable pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1),
            OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2),
            OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3)
          ],
        ),

        ///skip button
        const OnBoardingSkip(),

        ///dot Navigation SmoothPageIndicator
        const OnBoardingDotNavigation(),

        ///circular button

        const OnBoardingNextButton(),
      ]),
    );
  }
}




