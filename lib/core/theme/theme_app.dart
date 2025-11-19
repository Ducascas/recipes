import 'package:flutter/material.dart';
import 'package:recipes_app/core/theme/colors.dart';

class ThemeApp {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorsApp.white,
    hintColor: ColorsApp.black,
    scaffoldBackgroundColor: ColorsApp.white,
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: ColorsApp.black,
    hintColor: ColorsApp.white,
    scaffoldBackgroundColor: ColorsApp.black,
  );
}
