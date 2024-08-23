import 'package:e_comrc/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/contsants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  ///if you want to add background color you have to wrap with material widget,
  ///to do that we need [preferrefSized] widget so created custon cls
  const TTabBar({
    super.key, required this.tabs,
  });
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: TColors.primary,
        unselectedLabelColor: TColors.darkgrey,
        labelColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.primary,
        tabs: tabs,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}


