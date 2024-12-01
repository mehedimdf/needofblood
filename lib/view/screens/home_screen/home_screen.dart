// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/core/app_routes/app_routes.dart';
import 'package:need_of_blood/utils/app_icons/app_icons.dart';
import 'package:need_of_blood/utils/app_images/app_images.dart';
import 'package:need_of_blood/utils/app_strings/app_strings.dart';
import 'package:need_of_blood/view/components/custom_image/custom_image.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';
import 'package:need_of_blood/view/components/nav_bar/nav_bar.dart';
import 'package:need_of_blood/view/screens/home_screen/inner_widget/custom_list_widget.dart';
import 'package:need_of_blood/view/screens/home_screen/inner_widget/custrom_doner_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final List<String> imgList = [
  AppImages.sliderimage1,
  AppImages.sliderimage1,
  AppImages.sliderimage1,
];

late List<Widget> _pages;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CustomImage(
                  imageSrc: AppImages.mainCoverImage,
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    top: 80,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: "Mehedi Hassan",
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                                color: AppColros.white,
                              ),
                             Row(
                               children: [
                                 Icon(Icons.location_on_outlined,size: 20,color: AppColros.maincolor,),
                                 CustomText(
                                   text: "Bogura",
                                   fontSize: 12,
                                   fontWeight: FontWeight.w500,
                                   color: AppColros.blacklight,
                                 ),
                               ],
                             )
                            ],
                          ),
                          GestureDetector(
                            onTap: (){
                              Get.toNamed(AppRoutes.personalProfileScreen);
                            },
                            child: CustomImage(
                                imageSrc: AppImages.man, height: 40, width: 40),
                          ),
                        ],
                      ),
                    )),
                Positioned(
                  top: 200,
                  left: 0,
                  right: 0,
                  child: CarouselSlider(
                    options: CarouselOptions(
                        autoPlay: true,
                        initialPage: 0,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        height: 100.h
                        //enlargeStrategy: CenterPageEnlargeStrategy.height,
                        ),
                    items: List.generate(
                        imgList.length,
                        (index) => ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                imgList[index],
                                fit: BoxFit.cover,
                                // height: ,
                                width: MediaQuery.of(context).size.width,
                              ),
                            )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, right: 0),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustromDonerContainer(
                          onTap: (){
                            Get.toNamed(AppRoutes.findDonorsScreen);
                          },
                          image: AppIcons.userSearch,
                          name: AppStrings.findDonors,
                        ),
                        CustromDonerContainer(
                          onTap: (){
                            Get.toNamed(AppRoutes.donateGraphScreen);
                          },
                          image: AppIcons.graphIcon,
                          name: AppStrings.donateGraph,
                        ),
                        CustromDonerContainer(
                          onTap: (){
                            Get.toNamed(AppRoutes.requestScreen);
                          },
                          image: AppIcons.requestIcon,
                          name: AppStrings.requestBlood,
                        ),
                      ],
                    ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Donation Need",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColros.blacklight,
                        ),
                        CustomText(
                          text: "view all",
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: AppColros.grey,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                      children: List.generate(2, (index) {
                    return CustomListWidget();
                  }))
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BlackDaimonNavbar(currentIndex: 0),
    );
  }
}
