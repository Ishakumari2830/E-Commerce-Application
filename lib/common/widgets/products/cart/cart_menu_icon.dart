import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/contsants/colors.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key, required this.onPressed,  this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon:  Icon(Iconsax.shopping_bag,color: iconColor,)),
        Positioned(
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: TColors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(100)
            ),
            child: Center(
              child: Text(
                '2',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white,fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
