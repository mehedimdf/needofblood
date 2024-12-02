// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';

import '../../../utils/app_colors/app_colors.dart';
import '../custom_text/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.height = 55,
    this.width = double.maxFinite,
    required this.onTap,
    this.title = '',
    this.marginVertical = 0,
    this.marginHorizontal = 0,
    this.fillColor = AppColors.primary,
    this.textColor = AppColors.white,
    this.isBorder = false,
    this.fontSize,
    this.borderWidth,
    this.borderRadius,
  });

  final double height;
  final double? width;
  final Color? fillColor;
  final Color textColor;
  final VoidCallback onTap;
  final String title;
  final double marginVertical;
  final double marginHorizontal;
  final bool isBorder;
  final double? fontSize;
  final double? borderWidth;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.h),
        margin: EdgeInsets.symmetric(
            vertical: marginVertical, horizontal: marginHorizontal),
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [AppColros.l1, AppColros.redColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter),
          border: isBorder
              ? Border.all(color: textColor, width: borderWidth ?? .05)
              : null,
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
          color: fillColor,


        ),
        child: CustomText(
          fontSize: fontSize ?? 18.sp,
          fontWeight: FontWeight.w600,
          color: textColor,
          textAlign: TextAlign.center,
          text: title,

        ),
      ),
    );
  }
}
