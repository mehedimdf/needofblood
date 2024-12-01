/*
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../custom_text/custom_text.dart';

class CustomShap extends StatelessWidget {
  final Color color;
  final String name;
  final double fontSize;
  final String? number;
  const CustomShap(
      {super.key,
      required this.color,
      required this.name,
      this.number,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 14.h,
                width: 14.w,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 8.w,
              ),
              CustomText(
                text: name,
                fontSize: fontSize,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
                textAlign: TextAlign.start,
              ),
            ],
          ),
          CustomText(
            text: number ?? '',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
*/
