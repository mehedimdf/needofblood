import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:need_of_blood/app/homePage/home_page.dart';
import 'package:need_of_blood/app/homePage/lifesyne.dart';
import 'package:need_of_blood/app/splashScreen/splash.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/theme/themes_colors_system.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color:AppColros.white2,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      title: 'Flutter Demo',
      home: CustomNavbar(),
    );
  }
}
