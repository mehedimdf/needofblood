// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyThemes{
  Color cardColor = Color(0xffd60033);
  static final lightTheme=ThemeData(
    scaffoldBackgroundColor: Color(0xfff1f1f1),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Color(0xffffffff)),

    colorScheme: ColorScheme.light()
  );

  static final darkTheme=ThemeData(
    scaffoldBackgroundColor: Color(0xff292929),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Color(0xff292929)),
    colorScheme: ColorScheme.dark()
  );


}



class ThemeClass {
  Color lightPrimaryColor = Color(0xffd60033);
  Color darkPrimaryColor = Color(0xff292929);
  Color secondaryColor = Color(0xffd60033);
  Color accentColor = Color(0xffd60033);

  static ThemeData lightTheme = ThemeData(
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
        primary: _themeClass.lightPrimaryColor,
        secondary: _themeClass.secondaryColor),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: _themeClass.darkPrimaryColor,
    ),
  );
}

ThemeClass _themeClass = ThemeClass();