/*
import 'package:flutter/material.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_icons/app_icons.dart';
import '../custom_image/custom_image.dart';
import '../custom_text/custom_text.dart';

class CustomChackbox extends StatelessWidget {
  final String text;
  final String? time;
  final bool? isDone;
  final String? goalType;
  final Function()? onTap;
  const CustomChackbox({
    super.key,
    required this.text,
    this.isDone = false,
    this.onTap,
    this.time,
    this.goalType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: AppColors.primary,width: 0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  onTap!();
                },
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 0.0.h),
                          child: CustomImage(
                            imageSrc: isDone! ? AppIcons.eye : AppIcons.eyeOff,
                            imageType: ImageType.png,
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Expanded(
                          child: CustomText(
                            textAlign: TextAlign.start,
                            fontWeight: FontWeight.w500,
                            text: text,
                            color: AppColors.black,
                            fontSize: 16.w,
                            overflow: TextOverflow.ellipsis,
                            decoration:
                                isDone! ? TextDecoration.lineThrough : null,
                            maxLines: 4,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h,),
                    Padding(
                      padding: EdgeInsets.only(left: 33.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: goalType ?? '',
                            color: AppColors.brinkPink,
                            fontSize: 12.w,
                            fontWeight: FontWeight.w400,
                          ),
                          CustomText(
                            text: time ?? '',
                            color: AppColors.brinkPink,
                            fontSize: 12.w,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        )
      ],
    );
  }
}
*/
