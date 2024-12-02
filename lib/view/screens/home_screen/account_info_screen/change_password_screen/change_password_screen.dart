// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/view/components/custom_button/custom_button.dart';
import 'package:need_of_blood/view/components/custom_from_card/custom_from_card.dart';
import 'package:need_of_blood/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            fit: StackFit.loose,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  //color: AppColros.maincolor,
                  gradient: LinearGradient(
                      colors: [AppColros.l1, AppColros.l2],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60)),
                ),
                child: Column(
                  children: [
                    CustomRoyelAppbar(),
                    Center(
                      child: CustomText(
                        text: "Change Your\n Password.",
                        color: AppColros.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          Padding(
            padding:
            EdgeInsets.only(top: 30, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomFormCard(
                    title: "Old Password",
                    titleColor: AppColros.greylabel,
                    hintText: "Enter Old Password",
                    controller: TextEditingController()),
                CustomFormCard(
                    title: "New Password",
                    titleColor: AppColros.greylabel,
                    hintText: "Enter New Password",
                    controller: TextEditingController()),
                CustomFormCard(
                    title: "Confirm Password",
                    titleColor: AppColros.greylabel,
                    hintText: "Enter Confirm Password",
                    controller: TextEditingController()),
                SizedBox(height: 70,),
                CustomButton(onTap: (){}, title: "Save Change",)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
