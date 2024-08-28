import 'package:e_comrc/features/shop/screen/sub_category/sub_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../common/widgets/image_text_widgets/horizontal_image_text.dart';
import '../../../../../utils/contsants/image_strings.dart';

class THomecategorie extends StatelessWidget {
  const THomecategorie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return THorizontalImageText(
              image: TImages.sportIcon,
              title: 'Ball',
              onTap: () => Get.to(()=>SubCategoriesScreen()),
            );
          }),
    );
  }
}

