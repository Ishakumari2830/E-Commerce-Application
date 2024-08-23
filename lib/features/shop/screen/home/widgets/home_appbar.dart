import 'package:flutter/material.dart';

import '../../../../../common/widgets/appBar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/contsants/colors.dart';
import '../../../../../utils/contsants/text_strings.dart';


class THomeAppbar extends StatelessWidget {
  const THomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(title: Column(
      children: [
        Text(TTexts.homeAppbartitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey),),
        Text(TTexts.homeAppbarSubTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),)
      ],
    ),
        actions: [
          TCartCounterIcon(
            onPressed: (){},
            iconColor: TColors.white,
          )

        ]
    );
  }
}


