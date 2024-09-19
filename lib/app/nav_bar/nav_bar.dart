import 'package:flutter/material.dart';
import 'package:need_of_blood/app/homePage/account_page.dart';
import 'package:need_of_blood/app/homePage/donner_account_page.dart';
import 'package:need_of_blood/app/homePage/edit_profile.dart';
import 'package:need_of_blood/app/homePage/home_page.dart';
import 'package:need_of_blood/app/homePage/my_profile_page.dart';
import 'package:need_of_blood/app/homePage/notification_page.dart';
import 'package:need_of_blood/app/homePage/user_profile_page.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/custom_text/app_strings.dart';
import 'package:get/get.dart';
import 'package:need_of_blood/common/custom_text/custom_text.dart';
import '../../common/app_images/appImages.dart';
class NavBar extends StatefulWidget {
  final int currentIndex;
  const NavBar({super.key, required this.currentIndex});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late int bottomNavIndex;

  final List<String> selectedIcon = [
  AppImages.house,
  AppImages.adduser,
  AppImages.notification,
  AppImages.menu,
  ];

  final List<String> userNavText=[
    AppStrings.home,
    AppStrings.donnerAccount,
    AppStrings.notification,
    AppStrings.more,
  ];

  @override
  void initState() {
    bottomNavIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30,),
      color: AppColros.white,
      height: 96,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          selectedIcon.length,
              (index) => InkWell(
            onTap: () => onTap(index),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  index == bottomNavIndex
                      ? selectedIcon[index]
                      : selectedIcon[index],
                  height: 24,
                  width: 24,
                  color: index == bottomNavIndex
                      ? AppColros.red
                      : AppColros.grey,
                ),
                SizedBox(height: 4),
                CustomText(
                  text: userNavText[index],
                  color: index == bottomNavIndex
                      ? AppColros.maincolor
                      : AppColros.grey, fontsize: 12, fontweight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void onTap(int index) {
    if (index != bottomNavIndex) {
      switch (index) {
        case 0:
          Get.offAll(() => HomePage());
          break;
        case 1:
          Get.to(() => const DonnerAccountPage());
          break;
        case 2:
          Get.to(() => const NotificationPage());
          break;
        case 3:
          Get.to(() => const AccountPage());
      /*    break;
        case 4:
          Get.to(() => const HomePage());*/

      }
    }
  }
}


