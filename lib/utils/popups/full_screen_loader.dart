import 'package:e_comrc/utils/contsants/colors.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/loaders/animation_loader.dart';

class TFullScreenLoader{
  static void openLoadingDialog(String text,String animation){
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(canPop: false, child: Container(
          color: THelperFunctions.isDarkMode(Get.context!) ? TColors.dark : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 200,),
              TAnimationLoaderWidget(text:text,animation:animation),
            ],
          ),
        )));
  }
  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}