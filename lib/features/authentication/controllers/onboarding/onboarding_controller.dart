import 'package:e_comrc/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();

  ///variables
  final pageController = PageController();
  //her it will take integer value so everywhere we need to put.value
  Rx<int> currentpageIndex = 0.obs;//easily gonna be changed
/// update current index when page scroll
 void updatePageIndicator(index){
   currentpageIndex.value=index;
 }

  ///jump to the specific dot selected page
void dotNavigationClick(index){
   currentpageIndex.value = index;
   pageController.jumpTo(index);
}

  ///update current index and jump to the next page
void nextPage(){
   if(currentpageIndex.value == 2){
     final storage = GetStorage();
     storage.write('IsFirstTime', false);
     Get.offAll(const LoginScreen());
   }
   else{
     int page = currentpageIndex.value +1;
     pageController.jumpToPage(page);
   }

}

///update current index and jump to the last page
void skipPage(){
  //  currentpageIndex.value = 0;//last page index
  // pageController.jumpToPage(2);
  Get.to(const LoginScreen());

}
}