/*
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_icons/app_icons.dart';
import '../custom_image/custom_image.dart';
import '../custom_text/custom_text.dart';

class CustomEditDeleteIcon extends StatelessWidget {
  final String text;
  final void Function()? editOnTap;
  final void Function()? deleteOnTap;
  const CustomEditDeleteIcon(
      {super.key, required this.text, this.editOnTap, this.deleteOnTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: text,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
        ),
        Row(
          children: [
            IconButton(
              onPressed: editOnTap,
              icon: CustomImage(
                imageSrc: AppIcons.eyeOff,
              ),
            ),
            IconButton(
                onPressed: deleteOnTap,
                icon: CustomImage(
                  imageSrc: AppIcons.eyeOff,
                )),
          ],
        )
      ],
    );
  }
}
*/
