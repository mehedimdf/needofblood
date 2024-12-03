/*
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/utils/app_icons/app_icons.dart';
import 'package:need_of_blood/utils/app_strings/app_strings.dart';
import 'package:need_of_blood/view/components/custom_image/custom_image.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';
import 'package:need_of_blood/view/screens/home_screen/account_info_screen/account_info_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/all_view_donner_screen/all_view_donner_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/home_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/notification_screen/notification_screen.dart';
import '../../../utils/app_colors/app_colors.dart';

class CustomNavbarTwo extends StatefulWidget {
  const CustomNavbarTwo({super.key});

  @override
  State<CustomNavbarTwo> createState() => _CustomNavbarTwoState();
}

class _CustomNavbarTwoState extends State<CustomNavbarTwo> {
  late int bottomNavIndex;
  int currentTab = 0;
  final List<Widget> screens = [
    HomeScreen(),
    AllViewDonnerScreen(),
    NotificationScreen(),
    AccountInfoScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  final List<String> userNavText = [
    AppStrings.login,
    AppStrings.login,
    AppStrings.login,
    AppStrings.login,
  ];

  final List<String> selectedIcon = [
    AppIcons.homeU,
    AppIcons.listIconS,
    AppIcons.notification,
    AppIcons.accountPerson,
  ];
  final List<String> unSelectedIcon = [
    AppIcons.homeS,
    AppIcons.listIconU,
    AppIcons.notifiIconU,
    AppIcons.accountIocnU,
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentTab],
      floatingActionButton: Stack(
        children: [
          Container(
            height: 60.h,
            width: 60.w,
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: LinearGradient(
                colors: [
                  AppColros.l1, AppColros.redColor
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              top: 0,
              left: 0,
              child: GestureDetector(
                onTap: () {
                 // Get.toNamed(AppRoutes.sanimeScreen);
                },
                child: Icon(
                  Icons.add,
                  color: AppColors.white,
                  size: 35,
                ),
              )),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: AppColros.redColor,
        shadowColor: AppColors.white,
        elevation: 10,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 60.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    //   currentScreen = HomeScreen();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImage(
                      imageSrc:
                          currentTab == 0 ? selectedIcon[0] : unSelectedIcon[0],
                      */
/* imageColor: currentTab == 0
                          ? AppColors.primaryColor
                          : AppColors.grey_0,*//*

                    ),
                    CustomText(
                      text: AppStrings.login,
                      fontSize: 16.w,
                      fontWeight: FontWeight.w500,
                      color: currentTab == 0
                          ? AppColors.white
                          : AppColors.blacklight,
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    //  currentScreen = DoloriMuscolariScreen();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImage(
                      imageSrc:
                          currentTab == 1 ? selectedIcon[1] : unSelectedIcon[1],
                      imageColor: currentTab == 1
                          ? AppColors.white
                          : AppColors.blacklight,
                    ),
                    CustomText(
                      text: AppStrings.login,
                      fontSize: 16.w,
                      fontWeight: FontWeight.w500,
                      color: currentTab == 1
                          ? AppColors.white
                          : AppColors.blacklight,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    //   currentScreen = ChatScreen();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImage(
                      imageSrc:
                          currentTab == 2 ? selectedIcon[2] : unSelectedIcon[2],
                      height: 30.h,
                      width: 30.w,
                      */
/* imageColor: currentTab == 2
                          ? AppColors.primaryColor
                          : AppColors.grey_0,*//*

                    ),
                    CustomText(
                      text: AppStrings.login,
                      fontSize: 16.w,
                      fontWeight: FontWeight.w500,
                      color: currentTab == 2
                          ? AppColors.redlight
                          : AppColors.blacklight,
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    //   currentScreen = ProfileScreen();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImage(
                      imageSrc:
                          currentTab == 3 ? selectedIcon[3] : unSelectedIcon[3],
                      height: 30.h,
                      width: 30.w,
                      */
/*imageColor: currentTab == 3
                          ? AppColors.primaryColor
                          : AppColors.grey_0,*//*

                    ),
                    CustomText(
                      text: AppStrings.login,
                      fontSize: 16.w,
                      fontWeight: FontWeight.w500,
                      color: currentTab == 3
                          ? AppColors.redlight
                          : AppColors.black,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
