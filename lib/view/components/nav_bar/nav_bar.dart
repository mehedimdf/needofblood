// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/core/app_routes/app_routes.dart';
import 'package:need_of_blood/utils/app_icons/app_icons.dart';
import 'package:need_of_blood/utils/app_strings/app_strings.dart';
import 'package:need_of_blood/view/components/custom_image/custom_image.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';
import 'package:need_of_blood/view/screens/home_screen/account_info_screen/account_info_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/all_view_donner_screen/all_view_donner_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/home_screen.dart';
import 'package:need_of_blood/view/screens/home_screen/notification_screen/notification_screen.dart';
import '../../../utils/app_colors/app_colors.dart';

class BlackDaimonNavbar extends StatefulWidget {
  final int currentIndex;

  const BlackDaimonNavbar({required this.currentIndex, super.key});

  @override
  State<BlackDaimonNavbar> createState() => _UserNavBarState();
}

class _UserNavBarState extends State<BlackDaimonNavbar> {
  late int bottomNavIndex;

  final List<String> selectedIcon = [
    AppIcons.homeU,
    AppIcons.listIconS,
    AppIcons.notification,
    AppIcons.accountPerson,
  ];
  final List<String> unselectedIcon = [
    AppIcons.homeS,
    AppIcons.listIconU,
    AppIcons.notifiIconU,
    AppIcons.accountIocnU,
  ];

  final List<String> userNavText = [
    AppStrings.login,
    AppStrings.login,
    AppStrings.login,
    AppStrings.login,
  ];

  @override
  void initState() {
    bottomNavIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 80.h,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              // color: Color(0xffdf4056),
              gradient: LinearGradient(
                  colors: [AppColros.l1, AppColros.redColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.r),
                topLeft: Radius.circular(40.r),
              )),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  selectedIcon.length,
                  (index) => Row(
                    children: [
                      InkWell(
                        onTap: () => onTap(index),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            index == bottomNavIndex
                                ? Card(
                                    elevation: 100,
                                    shadowColor: AppColors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100.r),
                                    ),
                                    color: Colors.transparent,
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          selectedIcon[index],
                                          height: 30.h,
                                          width: 30.w,
                                          color: AppColros.white,
                                        ),
                                        // SizedBox(height: 4.h),
                                        index == bottomNavIndex
                                            ? const SizedBox()
                                            : CustomText(
                                                text: userNavText[index],
                                                color: AppColors.primary,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.w,
                                              ),
                                      ],
                                    ),
                                  )
                                : SvgPicture.asset(
                                    unselectedIcon[index],
                                    height: 30.h,
                                    width: 30.w,
                                    color: AppColros.white2,

                                  ),
                            /* SizedBox(height: 4.h),
                            index == bottomNavIndex
                                ? const SizedBox()
                                : CustomText(
                              text: userNavText[index],
                              color: AppColors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.w,
                            ),*/
                          ],
                        ),
                      ),
                      index == 1 ? SizedBox(width: 60.w) : SizedBox()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: -40.h,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Get.toNamed(AppRoutes.meetUpListScreen);
                    },
                    child: Container(
                      // padding: EdgeInsets.symmetric(horizontal: 20.w),
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.transparent,
                            width: 6,
                          )),
                      child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: FloatingActionButton(
                            onPressed: () {
                              Get.toNamed(AppRoutes.bannerScreenOne);
                            },
                            backgroundColor: AppColros.white,
                            shape: CircleBorder(),
                            child: CustomImage(
                              imageSrc: AppIcons.bloodDonation,
                              height: 40,
                              width: 40,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  void onTap(int index) {
    if (index != bottomNavIndex) {
      switch (index) {
        case 0:
          Get.offAll(() => HomeScreen());
          break;
        case 1:
           Get.to(() => AllViewDonnerScreen());
          break;
        case 2:
          Get.to(() => NotificationScreen());
          break;
        case 3:
          Get.to(() => AccountInfoScreen());
          break;
      }
    }
  }
}
