// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:need_of_blood/app/onboardingPage/onboarding_page2.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/app_images/appImages.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.splash_BackGround),
              fit: BoxFit.cover,
              opacity: 0.7),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage(AppImages.logo)),
            SizedBox(
              height: 50,
            ),
            Text(
              "Need Of Blood\n Organization BD.(N.B.O.B)",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: AppColros.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Save a life,",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: AppColros.green),
                ),
                Text(
                  "Give blood",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: AppColros.black),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(onTap: (){
              Get.to(()=> OnboardingPage2());
            },
              child: Container(
                alignment: Alignment.center,
                height: 80,
                //width: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        AppImages.button_bg,
                      ),
                      alignment: Alignment.center),
                ),
                child: Text(
                  "Start",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                      color: AppColros.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
