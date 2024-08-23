import 'package:flutter/material.dart';

import '../../../utils/contsants/colors.dart';
import '../../../utils/contsants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.width = 56,
     this.height=56,
    this.padding =TSizes.sm,
    this.fit= BoxFit.cover,
    required this.image,
    this.isNetwrokImage = false,
    this.backgroundColor,
    this.overlayColor,
  });
  final double width,height,padding;
  final BoxFit? fit;
  final String image ;
  final bool isNetwrokImage;
  final Color? backgroundColor;
  final Color? overlayColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          fit: fit,
          image : isNetwrokImage? NetworkImage(image):AssetImage(image)as ImageProvider,
          color: overlayColor,
        ),
      ),

    );
  }
}
