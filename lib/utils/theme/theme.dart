import 'package:flutter/material.dart';
import 'package:e_comrc/utils/theme/custom_themes/text_theme.dart';
import 'package:e_comrc/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_comrc/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_comrc/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_comrc/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_comrc/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_comrc/utils/theme/custom_themes/Outlinedbutton_theme.dart';
import 'package:e_comrc/utils/theme/custom_themes/text_field_theme.dart';



class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme : TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightAppBarTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtomTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    bottomSheetTheme : TBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme : TTextFormFieldTheme.lightInputDecorationTheme,
    appBarTheme : TAppBarTheme.lightAppBarTheme,
    checkboxTheme : TCheckboxTheme.lightCheckboxTheme,



  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme : TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkAppBarTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtomTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    bottomSheetTheme : TBottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme : TTextFormFieldTheme.darkInputDecorationTheme,
    appBarTheme : TAppBarTheme.darkAppBarTheme,
    checkboxTheme : TCheckboxTheme.darkCheckboxTheme,

  );
}