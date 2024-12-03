// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/view/components/custom_image/custom_image.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';
class CustromDonerContainer extends StatelessWidget {
  final String image;
  final String name;
  final Function()? onTap;
  const CustromDonerContainer({super.key, required this.image, required this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
        // padding: EdgeInsets.all(15),
         height: 110.h,
          width: 110.h,
          decoration: BoxDecoration(
              color: AppColros.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(1.0, 1.0),
                    spreadRadius: 4.0,
                    blurRadius: 4.0,
                    color: AppColros.greywhite)
              ]

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomImage(imageSrc: image, height: 65,width: 65,),
              CustomText(text: name,fontSize: 13,fontWeight: FontWeight.w500,color: AppColros.blacklight,)
            ],
          ),
        ),
      ),
    );
  }
}
