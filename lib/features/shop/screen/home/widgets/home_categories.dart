import 'package:flutter/material.dart';

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
              onTap: (){},
            );
          }),
    );
  }
}

