/*
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/app_images/appImages.dart';
import 'package:need_of_blood/common/custom_text/custom_text.dart';
import 'package:need_of_blood/utils/app_images/app_images.dart';

class AppDeveloperPage extends StatelessWidget {
  const AppDeveloperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(),
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 550,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
               */
/* borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(75),
                    bottomLeft: Radius.circular(75)),*//*

                image: DecorationImage(
                    image: AssetImage(AppImages.),
                    fit: BoxFit.cover,
                    opacity: 0.8),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    Center(
                      child: const Image(
                        image: AssetImage(AppImages.man),
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomText(
                        text: "Mehedi Bin Abdus Salam",
                        color: AppColros.black,
                        fontsize: 25,
                        fontweight: FontWeight.w700),
                    CustomText(
                        text: "App Developer",
                        color: AppColros.black,
                        fontsize: 18,
                        fontweight: FontWeight.w500),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: AppColros.black,
                        ),
                        CustomText(
                            text: "Dhaka",
                            color: AppColros.black,
                            fontsize: 18,
                            fontweight: FontWeight.w400),
                      ],
                    ),
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                CustomText(
                                    text: "116",
                                    color: AppColros.black,
                                    fontsize: 20,
                                    fontweight: FontWeight.w500),
                                CustomText(
                                    text: "Favorited",
                                    color: AppColros.black,
                                    fontsize: 16,
                                    fontweight: FontWeight.w500),
                              ],
                            ),
                            Column(
                              children: [
                                CustomText(
                                    text: "116",
                                    color: AppColros.black,
                                    fontsize: 20,
                                    fontweight: FontWeight.w500),
                                CustomText(
                                    text: "Profile Views",
                                    color: AppColros.black,
                                    fontsize: 16,
                                    fontweight: FontWeight.w500),
                              ],
                            )
                          ],
                        ),
                        Positioned(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Center(
                              child: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColros.white),
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  CustomText(
                      text:
                          "product designer of a Nord team based in chiang mai with a great love for design lorem ipsum dolore set ami some",
                      color: AppColros.black,
                      fontsize: 16,
                      fontweight: FontWeight.w400),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                      text: "B.Sc. in Computer Science and Engineering.(CSE)",
                      color: AppColros.black,
                      fontsize: 16,
                      fontweight: FontWeight.w500),
                  CustomText(
                      text: "Southeast University",
                      color: AppColros.black,
                      fontsize: 20,
                      fontweight: FontWeight.w500),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 30,
                      ),
                      CustomText(
                          text: "Mohakhali Tajgao",
                          color: AppColros.black,
                          fontsize: 16,
                          fontweight: FontWeight.w500),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomText(
                  text: "SKILLS",
                  color: AppColros.black,
                  fontsize: 20,
                  fontweight: FontWeight.w500),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: 0),
                    height: 40,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1.0, 1.0),
                              spreadRadius: 4.0,
                              blurRadius: 4.0,
                              color: AppColros.white),
                        ],
                        color: AppColros.orange,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: CustomText(
                          text: "Flutter & Dart",
                          color: AppColros.white,
                          fontsize: 15,
                          fontweight: FontWeight.w400),
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
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: CustomText(
                          text: "Versatile Mobile App Creator",
                          color: AppColros.white,
                          fontsize: 15,
                          fontweight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
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
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: CustomText(
                          text: "Innovative App Developer",
                          color: AppColros.white,
                          fontsize: 15,
                          fontweight: FontWeight.w400),
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
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: CustomText(
                          text: "Android/iOS App",
                          color: AppColros.white,
                          fontsize: 15,
                          fontweight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomText(
                  text: "Higher and contact us",
                  color: AppColros.black,
                  fontsize: 20,
                  fontweight: FontWeight.w500),
              SizedBox(height: 20,),
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
                      ),child: Image(image: AssetImage(AppImages.google)),
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
                      ),child: Image(image: AssetImage(AppImages.fb)),
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
                      ),child: Image(image: AssetImage(AppImages.linkedin)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
*/
