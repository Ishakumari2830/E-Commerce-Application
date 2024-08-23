import 'package:flutter/material.dart';

import '../../../utils/contsants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.width ,
    this.height,
    required this.imageurl,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor ,
    this.padding,
    this.fit = BoxFit.contain,
    this.isNetworkImage = false,
    this.onpressed,
    this.borderRadius = TSizes.md,
  });
  final double? width,height;
  final String imageurl;
  final bool applyImageRadius;
  final BoxBorder ? border;
  final Color? backgroundColor;
  final EdgeInsetsGeometry ? padding;
  final BoxFit ? fit;
  final bool isNetworkImage;
  final VoidCallback? onpressed;
  final double borderRadius ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
          decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),),
          child : ClipRRect(//used to apply borderradius on image
            borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
            child: Image(image : isNetworkImage ? NetworkImage(imageurl) : AssetImage(
                imageurl

            ) as ImageProvider,fit : fit),
          )

      ),
    );
  }
}

