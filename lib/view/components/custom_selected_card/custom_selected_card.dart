/*
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_icons/app_icons.dart';
import '../custom_image/custom_image.dart';

class CustomSelectedCard extends StatelessWidget {
  const CustomSelectedCard(
      {super.key,
      required this.imagePath,
      required this.isSelected,
      required this.onTap});

  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          height: 62.h,
          width: 93.w,
        ),
        SizedBox(
          width: 8.w,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: InkWell(
            onTap: onTap,
            child: CustomImage(
                imageSrc: isSelected ? AppIcons.eyeOff : AppIcons.eyeOff),
          ),
        ),
      ],
    );
  }
}
*/
