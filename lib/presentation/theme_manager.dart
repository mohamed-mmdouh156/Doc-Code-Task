import 'package:flutter/material.dart';
import 'package:home_screen_task/presentation/color_manager.dart';

import 'value_manager.dart';

ThemeData getApplicationTheme ()
{
  return ThemeData(
    // color theme
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,
    scaffoldBackgroundColor: ColorManager.whiteDark,

     appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.white,
      shadowColor: ColorManager.white,
      elevation: 0.0,
    ),


  );
}