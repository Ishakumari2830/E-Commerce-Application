import 'package:flutter/material.dart';

import '../../../../../utils/contsants/colors.dart';
import '../../../../../utils/device/device_utility.dart';

class TRatingProgressIndicator extends StatelessWidget {
  const TRatingProgressIndicator({
    super.key, required this.text, required this.value,
  });
  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text, style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: TDeviceUtils.getScreenWidth(context)*0.5,
            child: LinearProgressIndicator(
              value: value,//50 %
              minHeight: 13,
              backgroundColor: TColors.grey,
              valueColor: const AlwaysStoppedAnimation(
                  TColors.primary
              ),
            ),
          ),
        )
      ],
    );
  }
}
