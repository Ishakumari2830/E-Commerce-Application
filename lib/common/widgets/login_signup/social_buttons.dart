import 'package:flutter/material.dart';

import '../../../utils/contsants/colors.dart';
import '../../../utils/contsants/image_strings.dart';
import '../../../utils/contsants/sizes.dart';
class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: TColors.grey
              ),
              borderRadius: BorderRadius.circular(100),),
            child : IconButton(
              onPressed: (){},
              icon: const Image(
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                image: AssetImage(TImages.google),
              ),
            )

        ),
        const SizedBox(
            width : TSizes.spaceBtwItems
        ),
        Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: TColors.grey
              ),
              borderRadius: BorderRadius.circular(100),),
            child : IconButton(
              onPressed: (){},
              icon: const Image(
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                image: AssetImage(TImages.facebook),
              ),
            )

        ),


      ],
    );
  }
}
