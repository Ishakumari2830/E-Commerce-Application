import 'package:flutter/material.dart';

import '../../../../utils/contsants/colors.dart';

class TCircularWidget extends StatelessWidget {
  const TCircularWidget({
    super.key,
    this.width=400,
    this.height=400,
    this.radius=400,
    this.padding=0,
    this.margin,
    this.child,
    this.backgroundcolor = TColors.white,
  });

  final double? width; //? implies can be nullable
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets ?  margin;
  final Widget? child;
  final Color backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundcolor,
      ),
      child: child,
    );
  }
}