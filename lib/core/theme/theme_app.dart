import 'package:flutter/material.dart';
import 'package:recipes_app/core/theme/colors.dart';

class ThemeApp {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: ColorsApp.white,
    hintColor: ColorsApp.black,
    scaffoldBackgroundColor: ColorsApp.white,
    appBarTheme: AppBarTheme(backgroundColor: ColorsApp.white),
  );

  static ThemeData darkTheme = ThemeData(
    // useMaterial3: true,
    // brightness: Brightness.dark,
    primaryColor: ColorsApp.black,
    hintColor: ColorsApp.white,
    scaffoldBackgroundColor: ColorsApp.black,
    appBarTheme: AppBarTheme(backgroundColor: ColorsApp.black),
  );
}
