// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/utils/app_colors/app_colors.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';
class CustomGraphCard extends StatelessWidget {
  final String count;
  final String title;
  final Color? color;
  final Color? countColor;
  final Color titleColor;
  const CustomGraphCard({super.key, required this.count, required this.title, this.color, this.countColor, required this.titleColor});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(right: 10),
      child: Container(
        padding: EdgeInsets.all(16),
        //height: 120,
       // width: 120,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
                text: count,
                color: countColor ?? AppColors.red,
                fontSize: 32,
                fontWeight: FontWeight.w500),
            SizedBox(
              height: 2,
            ),
            CustomText(
                text: title,
                color: titleColor!,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ],
        ),
      ),
    );
  }
}
