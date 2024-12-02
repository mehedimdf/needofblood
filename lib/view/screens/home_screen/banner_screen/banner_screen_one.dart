// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/core/app_routes/app_routes.dart';
import 'package:need_of_blood/utils/app_images/app_images.dart';
import 'package:need_of_blood/view/components/custom_button/custom_button.dart';
import 'package:need_of_blood/view/components/custom_image/custom_image.dart';
import 'package:need_of_blood/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';

class BannerScreenOne extends StatelessWidget {
  const BannerScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          //color: AppColros.maincolor,
          gradient: LinearGradient(
              colors: [AppColros.l1, AppColros.l2],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right : 8, bottom : 100,top: 0 ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomRoyelAppbar(),
              CustomImage(
                imageSrc: AppImages.bannerImage,
                height: 300,
              ),
              CustomText(
                text:
                    "আপনার রক্তে একটি জীবন বাঁচাবে।\n রক্ত দেন না কেন?\n তাই রক্ত ডোনেট করতে\n ক্লিক করুন। ",
                fontSize: 25,
                color: AppColros.white,
                fontWeight: FontWeight.w500,
                maxLines: 5,
              ),
              CustomButton(
                width: 250,
                onTap: () {
                  Get.toNamed(AppRoutes.bloodDonateAccountScreen);
                },
                title: "Create Your Account",
                fillColor: AppColros.white,
                textColor: AppColros.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
