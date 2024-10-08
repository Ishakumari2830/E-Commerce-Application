import 'package:e_comrc/common/widgets/custom_shapes/Container/circular_containers.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/contsants/colors.dart';
class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null ;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label:isColor ? const SizedBox() : Text(text),
        selected : selected,
        onSelected : onSelected,
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        avatar: isColor
        ?TCircularWidget(width: 50,height: 50,backgroundcolor: THelperFunctions.getColor(text)!,)
        : null,
        shape: isColor? const CircleBorder() : null,
        labelPadding: isColor?  const EdgeInsets.all(0) : null,
        padding:isColor? const EdgeInsets.all(0): null,

        backgroundColor: isColor ?  THelperFunctions.getColor(text) ! : null,
      ),
    );
  }
}

