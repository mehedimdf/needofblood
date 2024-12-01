/*
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_icons/app_icons.dart';
import '../custom_image/custom_image.dart';
import '../custom_text/custom_text.dart';

class CustomGoalChackbox extends StatelessWidget {
  final String text;
  final bool? isDone;
  final Function()? onTap;
  const CustomGoalChackbox(
      {super.key, required this.text, this.isDone, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          GestureDetector(
              onTap: onTap,
              child: CustomImage(
                imageSrc: isDone! ? AppIcons.eyeOff : AppIcons.eyeOff,
                imageType: ImageType.png,
              )),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: CustomText(
              text: text,
              color: AppColors.black,
              fontSize: 13.h,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              decoration: isDone! ? TextDecoration.lineThrough : null,
            ),
          )
        ],
      ),
    );
  }
}
*/
