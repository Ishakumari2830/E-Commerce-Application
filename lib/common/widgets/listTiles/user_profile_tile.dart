import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/contsants/colors.dart';
import '../../../utils/contsants/image_strings.dart';
import '../images/t_circular_images.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, required this.onPressed,
  });

 final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,

      ),
      title: Text('Isha Gupta',style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
      subtitle : Text('ishaguptarg2019@gmail.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
      trailing: IconButton(onPressed: onPressed,icon: const Icon(Iconsax.edit,color: TColors.white,),),
    );
  }
}