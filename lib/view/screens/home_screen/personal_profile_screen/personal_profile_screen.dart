// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/utils/app_images/app_images.dart';
import 'package:need_of_blood/utils/app_strings/app_strings.dart';
import 'package:need_of_blood/view/components/custom_from_card/custom_from_card.dart';
import 'package:need_of_blood/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';

class PersonalProfileScreen extends StatelessWidget {
  const PersonalProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.7,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColros.l1, AppColros.l2],
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: Stack( // Changed from Positioned to Stack
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Column(
                    children: [
                      CustomRoyelAppbar(titleName: AppStrings.myProfile),
                      Center(
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            border: Border.all(width: 5, color: AppColros.white),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                              ),
                            ],
                          ),
                          child: const Image(
                            image: AssetImage(AppImages.man),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      CustomText(
                        text: "Mehedi Bin Ab. Salam",
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: AppColros.white,
                      ),
                    ],
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
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 30),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: MediaQuery.sizeOf(context).width / 2.3,
                            decoration: BoxDecoration(
                              color: AppColros.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              children: [
                                CustomText(
                                  text: "A+",
                                  color: AppColros.redlight,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                ),
                                CustomText(
                                  text: "Blood Group",
                                  color: AppColros.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: MediaQuery.sizeOf(context).width / 2.3,
                            decoration: BoxDecoration(
                              color: AppColros.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              children: [
                                CustomText(
                                  text: "10 ",
                                  color: AppColros.skgreen,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                ),
                                CustomText(
                                  text: "Donate Count",
                                  color: AppColros.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, right: 0, top: 10),
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: AppColros.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: "Last Donate : ",
                                  color: AppColros.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomText(
                                  text: "3 Month Ago",
                                  color: AppColros.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomFormCard(
                        title: "Your Name",
                        hintText: "Mehedi Hassan",
                        prefixIcon: Icon(Icons.person, color: AppColros.maincolor),
                        readOnly: true,
                        controller: TextEditingController(),
                      ),
                      CustomFormCard(
                        title: "Your Phone Number",
                        hintText: "01518602063",
                        prefixIcon: Icon(Icons.call, color: AppColros.maincolor),
                        readOnly: true,
                        controller: TextEditingController(),
                      ),
                      CustomFormCard(
                        title: "Your Date of Birth",
                        hintText: "13/03/1997",
                        prefixIcon: Icon(Icons.calendar_month, color: AppColros.maincolor),
                        readOnly: true,
                        controller: TextEditingController(),
                      ),
                      CustomFormCard(
                        title: "Your Gender",
                        hintText: "Male ",
                        prefixIcon: Icon(Icons.generating_tokens_outlined, color: AppColros.maincolor),
                        readOnly: true,
                        controller: TextEditingController(),
                      ),
                      CustomFormCard(
                        title: "Your Blood Group",
                        hintText: "A+",
                        prefixIcon: Icon(Icons.bloodtype, color: AppColros.maincolor),
                        readOnly: true,
                        controller: TextEditingController(),
                      ),
                      CustomFormCard(
                        title: "Your Division",
                        hintText: "Dhaka",
                        prefixIcon: Icon(Icons.location_city, color: AppColros.maincolor),
                        readOnly: true,
                        controller: TextEditingController(),
                      ),
                      CustomFormCard(
                        title: "Your District",
                        hintText: "Mirpur",
                        prefixIcon: Icon(Icons.my_location_outlined, color: AppColros.maincolor),
                        readOnly: true,
                        controller: TextEditingController(),
                      ),
                      CustomFormCard(
                        title: "Full Address",
                        hintText: "Mirpur 2, Love Road",
                        prefixIcon: Icon(Icons.location_on, color: AppColros.maincolor),
                        readOnly: true,
                        maxLine: 2,
                        controller: TextEditingController(),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

