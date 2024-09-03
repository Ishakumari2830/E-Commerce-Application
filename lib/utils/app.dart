
import 'package:e_comrc/bindings/general_bindings.dart';
import 'package:e_comrc/utils/contsants/colors.dart';
import 'package:e_comrc/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../features/authentication/screens/onboarding/onboarding.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      //Show loader or circular progress  Indicator meanwhile Authentication Repository is deciding to sjow the relevant screen
      home: const  Scaffold(backgroundColor: TColors.primary,
      body: Center(child: CircularProgressIndicator(color: TColors.white,)),),
    );
  }
}
