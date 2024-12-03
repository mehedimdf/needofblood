// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/core/app_routes/app_routes.dart';
import 'package:need_of_blood/utils/app_strings/app_strings.dart';
import 'package:need_of_blood/view/components/custom_button/custom_button.dart';
import 'package:need_of_blood/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';

class DonateThisOrgScreen extends StatelessWidget {
  const DonateThisOrgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(  // Allow the entire screen to be scrollable
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 6,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColros.l1, AppColros.l2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
              ),
              child: CustomRoyelAppbar(titleName: AppStrings.donateThisOrganization),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: AppColros.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        top: 20,
                        text: "Need of Blood Organization\n এর লক্ষ্য উদ্দেশ্য",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColros.black,
                        bottom: 20,
                      ),
                      CustomText(
                        text: "Blood group: Determine the donor's blood type Antibodies: Screen for antibodies in the plasma Infections: Test for infections like hepatitis B, C, and E, HIV, syphilis, and HTLV Other tests: May check for malaria, T-cruzi, West Nile Virus, and Cytomegalovirus",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColros.blacklight,
                        maxLines: 10,
                        bottom: 20,
                        textAlign: TextAlign.start,
                      ),
                      CustomText(
                        top: 20,
                        text: "আমাদের সাপোর্ট করুন ",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColros.black,
                        bottom: 20,
                      ),
                      CustomText(
                        text: "Blood group: Determine the donor's blood type Antibodies: Screen for antibodies in the plasma Infections: Test for infections like hepatitis B, C, and E, HIV, syphilis, and HTLV Other tests: May check for malaria, T-cruzi, West Nile Virus, and Cytomegalovirus",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColros.blacklight,
                        maxLines: 10,
                        bottom: 20,
                        textAlign: TextAlign.start,
                      ),
                      CustomText(
                        top: 20,
                        text: "আমাদের সাপোর্ট করুন ",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColros.black,
                        bottom: 20,
                      ),
                      CustomText(
                        text: "বিশেষ দ্রষ্টব্য : আমাদের প্রজেক্টে সাপোর্ট করতে যাকাত, ফিতরা মান্নত কুরবানীর  পশুর চামড়ার টাকা এখানে দেওয়া যাবে না । শুধুমাত্র হাদিয়া হিসেবে প্রজেক্টে দেয়া  যাবে ।",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColros.blacklight,
                        maxLines: 10,
                        bottom: 20,
                        textAlign: TextAlign.start,
                      ),
                      CustomText(
                        top: 20,
                        text: "আমাদের অফিসিয়াল ফেসবুক পেজ",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColros.black,
                        bottom: 10,
                      ),
                      CustomText(
                        text: "www.fb.com/needofblood.org",
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueAccent,
                        bottom: 20,
                      ),
                      CustomText(
                        text: "আমাদের প্রজেক্টে হাদিয়া দিতে নিচের বাটনে প্রেস করুন -",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        bottom: 20,
                        maxLines: 2,
                      ),
                      CustomButton(onTap: () {
                        Get.toNamed(AppRoutes.paymentScreen);
                      }, title: "আমি হাদিয়া দিতে চাই"),
                      SizedBox(height: 50,)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
