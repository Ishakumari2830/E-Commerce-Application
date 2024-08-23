import 'package:e_comrc/common/widgets/custom_shapes/Container/circular_containers.dart';
import 'package:flutter/material.dart';

import '../../../../utils/contsants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';

class TPrimaryHeaderConatiner extends StatelessWidget {
  const TPrimaryHeaderConatiner({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdges(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(///if we dont wrap with sized box(to give more space),it will show error while running for size,since
          ///stack is empty and i have put two position widget, so either wrP with sizedbox or add col below
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: TCircularWidget(
                  backgroundcolor: TColors.white.withOpacity(0.1),
                )),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularWidget(
                backgroundcolor: TColors.white.withOpacity(0.1),
              ),
            ),
            child,
            // Column(
            //   children: [
            //     ///appbar
            //     ///searchbar
            //     ///categoreis
            //   ],
            // )

          ],
        ),
      ),
    );
  }
}



