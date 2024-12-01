// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:need_of_blood/utils/app_strings/app_strings.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_icons/app_icons.dart';
import '../../screens/home_screen/home_screen.dart';

class CustomNavbar extends StatefulWidget {
 final  int currentIndex;
  const CustomNavbar({super.key, required this.currentIndex});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
 int bottomNavIndex = 0;
  final List<String> userNavText = [
    AppStrings.login,
    AppStrings.login,
    AppStrings.login,
    AppStrings.login,
  ];
  final List<String> selectedIcon = [
    AppIcons.phoneCall,
    AppIcons.phoneCall,
    AppIcons.phoneCall,
    AppIcons.phoneCall,
  ];

  @override
  // void initState() {
  //   bottomNavIndex = widget.currentIndex;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
       height: 65.h,
      animationCurve: Curves.bounceIn,
      animationDuration: 3.seconds,
      index: widget.currentIndex,
      backgroundColor: Colors.transparent,
      color: AppColors.red,
      onTap: (index){
        setState(() {
         // index = widget.currentIndex;
          switch (index) {
            case 0:
              Get.offAll(() => HomeScreen());
              return;
            case 1:
              //Get.to(() => ResourcesScreen());
              break;
            case 2:
             // Get.to(() => FavoriteScreen());
              break;
            case 3:
            //  Get.to(() => SupportScreen());
              break;
          }
        });

      },
      items: List.generate(selectedIcon.length, (i) {
        return CustomNavIcon(
          assetName: selectedIcon[i],
          //sizeBoxHeight: index != currentIndex ? 20.h : 15,
         iconSize: i == bottomNavIndex ? 30.h : 30.h,
        );
      }),
    );
  }

  void onTap(int index) {
    if (index == bottomNavIndex) {
      print("=======================$index");

    }
  }
}

class CustomNavIcon extends StatelessWidget {
  const CustomNavIcon(
      {super.key, required this.assetName, required this.iconSize});
  final String assetName;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      height: iconSize,
      width: iconSize,
    );
  }
}
