// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/core/app_routes/app_routes.dart';
import 'package:need_of_blood/utils/app_icons/app_icons.dart';
import 'package:need_of_blood/utils/app_images/app_images.dart';
import 'package:need_of_blood/view/components/custom_image/custom_image.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';

class CustomListWidget extends StatelessWidget {
  final Function()? onTap;
  const CustomListWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Get.toNamed(AppRoutes.userProfileScreen);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              //height: 130,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1.0, 1.0),
                        spreadRadius: 4.0,
                        blurRadius: 4.0,
                        color: AppColros.greywhite),
                  ]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImage(imageSrc: AppImages.man, height: 60, width: 60)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: 20,
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          CustomText(
                            text: "Mehedi Hassan",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColros.blacklight,
                          )
                        ],
                      ),
                      Container(
                        height: 1,
                        width: 150,
                        color: AppColros.grey.withOpacity(0.2)
                      ),
                      SizedBox(height: 4.h,),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,
                              size: 15, color: AppColros.maincolor),
                          SizedBox(
                            width: 5,
                          ),
                          CustomText(
                            text: "Bogura",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColros.grey,
                          )
                        ],
                      ),
                      SizedBox(height: 4.h,),
                      Row(
                        children: [
                          Icon(Icons.bloodtype_outlined,
                              size: 15, color: AppColros.maincolor),
                          SizedBox(
                            width: 5,
                          ),
                          CustomText(
                            text: "Last Donate: 3 month ago",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColros.grey,
                          )
                        ],
                      ),
                      SizedBox(height: 4.h,),
                     /* Row(
                        children: [
                          Icon(Icons.transgender,
                              size: 15, color: AppColros.maincolor),
                          SizedBox(
                            width: 5,
                          ),
                          CustomText(
                            text: "Gender: Male",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColros.grey,
                          )
                        ],
                      ),
                      SizedBox(height: 4.h,),*/
                      Row(
                        children: [
                          Icon(Icons.accessibility_new,
                              size: 15, color: AppColros.maincolor),
                          SizedBox(
                            width: 5,
                          ),
                          CustomText(
                            text: "Age: 27",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColros.grey,
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "A+",
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: AppColros.maincolor,
                        bottom: 10.h,
                      ),
                      IconButton(
                          onPressed: () {

                          },
                          icon: CustomImage(
                            imageSrc: AppIcons.call_icon,
                            height: 40,
                            width: 40,
                          ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
