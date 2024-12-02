// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/utils/app_icons/app_icons.dart';
import 'package:need_of_blood/utils/app_images/app_images.dart';
import 'package:need_of_blood/view/components/custom_image/custom_image.dart';
import 'package:need_of_blood/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';

class AppDeveloperScreen extends StatelessWidget {
  const AppDeveloperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 280,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50)),
            image: DecorationImage(
              image: AssetImage(AppImages.manCover),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              CustomRoyelAppbar(),
              Center(
                child: const Image(
                  image: AssetImage(AppImages.man),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 30, bottom: 15),
                          // height: 200,
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            color: AppColros.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            children: [
                              CustomText(
                                  text: "Mehedi Bin Abdus Salam",
                                  color: AppColros.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                              CustomText(
                                  text: "App Developer",
                                  color: AppColros.greylabel,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: AppColros.greylabel,
                                  ),
                                  CustomText(
                                      text: "Dhaka",
                                      color: AppColros.greylabel,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        CustomText(
                                            text: "116",
                                            color: AppColros.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                        CustomText(
                                            text: "Favorited",
                                            color: AppColros.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        CustomText(
                                            text: "116",
                                            color: AppColros.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                        CustomText(
                                            text: "Profile Views",
                                            color: AppColros.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -30,
                          left: 20,
                          child: Center(
                              child: FloatingActionButton(
                                  backgroundColor: AppColros.redColor,
                                  onPressed: () {},
                                  child: CustomImage(
                                    imageSrc: AppIcons.google,
                                    height: 40,
                                    width: 40,
                                    imageColor: AppColros.white,
                                  ))),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          // height: 100,
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            color: AppColros.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            children: [
                              CustomText(
                                top: 20,
                                text: "Southeast University",
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                bottom: 5,
                              ),
                              CustomText(
                                text:
                                    "B.Sc. in Computer Science and Engineering.(CSE)",
                                color: AppColros.greylabel,
                                maxLines: 2,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                bottom: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 30,
                                    color: AppColros.greylabel,
                                  ),
                                  CustomText(
                                      text: "Mohakhali Tajgao",
                                      color: AppColros.greylabel,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: -25,
                          left: 20,
                          child: Center(
                              child: FloatingActionButton(
                                  backgroundColor: AppColros.redColor,
                                  onPressed: () {},
                                  focusColor: AppColros.maincolor,
                                  child: CustomImage(
                                    imageSrc: AppIcons.education,
                                    height: 40,
                                    width: 40,
                                    imageColor: AppColros.white,
                                  ))),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          // height: 100,
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            color: AppColros.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            children: [
                              CustomText(
                                text: "SKILLS",
                                color: AppColros.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                bottom: 10,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      // margin: EdgeInsets.only(left: 0),
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: AppColros.orange,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: CustomText(
                                            text: "Flutter & Dart",
                                            color: AppColros.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      padding: EdgeInsets.all(10),
                                      margin: EdgeInsets.only(left: 10),
                                      //width: 10,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset(1.0, 1.0),
                                                spreadRadius: 4.0,
                                                blurRadius: 4.0,
                                                color: AppColros.white),
                                          ],
                                          color: AppColros.skblue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: CustomText(
                                            text:
                                                "Versatile Mobile App Creator",
                                            color: AppColros.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 40,
                                      padding: EdgeInsets.all(10),
                                      margin: EdgeInsets.only(left: 0),
                                      //width: 10,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset(1.0, 1.0),
                                                spreadRadius: 4.0,
                                                blurRadius: 4.0,
                                                color: AppColros.white),
                                          ],
                                          color: AppColros.skgreen,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: CustomText(
                                            text: "Innovative App Developer",
                                            color: AppColros.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      padding: EdgeInsets.all(10),
                                      margin: EdgeInsets.only(left: 10),
                                      //width: 10,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset(1.0, 1.0),
                                                spreadRadius: 4.0,
                                                blurRadius: 4.0,
                                                color: AppColros.white),
                                          ],
                                          color: AppColros.cardclr,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: CustomText(
                                            text: "Android/iOS App",
                                            color: AppColros.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -25,
                          left: 20,
                          child: Center(
                              child: FloatingActionButton(
                                  backgroundColor: AppColros.redColor,
                                  onPressed: () {},
                                  focusColor: AppColros.maincolor,
                                  child: CustomImage(
                                    imageSrc: AppIcons.lineIcon,
                                    height: 40,
                                    width: 40,
                                    imageColor: AppColros.white,
                                  ))),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 45, bottom: 20),
                          // height: 100,

                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            color: AppColros.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Card(
                                    color: Colors.transparent,
                                    shadowColor: AppColros.grey2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    elevation: 10,
                                    child: Container(
                                      height: 47,
                                      width: 47,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColros.white,
                                      ),
                                      child: Image(
                                          image: AssetImage(AppIcons.google)),
                                    ),
                                  ),
                                  Card(
                                    color: Colors.transparent,
                                    shadowColor: AppColros.grey2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    elevation: 10,
                                    child: Container(
                                      height: 47,
                                      width: 47,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColros.white,
                                      ),
                                      child: Image(
                                          image: AssetImage(AppIcons.google)),
                                    ),
                                  ),
                                  Card(
                                    color: Colors.transparent,
                                    shadowColor: AppColros.grey2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    elevation: 10,
                                    child: Container(
                                      height: 47,
                                      width: 47,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColros.white,
                                      ),
                                      child: Image(
                                          image: AssetImage(AppIcons.google)),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: -25,
                          left: 20,
                          child: Center(
                              child: FloatingActionButton(
                                  backgroundColor: AppColros.redColor,
                                  onPressed: () {},
                                  focusColor: AppColros.maincolor,
                                  child: CustomImage(
                                    imageSrc: AppIcons.global,
                                    height: 40,
                                    width: 40,
                                    imageColor: AppColros.white,
                                  ))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
