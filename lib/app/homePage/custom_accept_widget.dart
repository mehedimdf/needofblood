/*
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/app_images/appImages.dart';
import 'package:need_of_blood/common/custom_text/custom_text.dart';
class CustomAcceptWidget extends StatelessWidget {
  const CustomAcceptWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10,),
      child: Column(
        children: [
          Container(
            height: 170,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              */
/*  boxShadow: [
                  BoxShadow(
                      offset: Offset(1.0, 1.0),
                      spreadRadius: 4.0,
                      blurRadius: 4.0,
                      color: AppColros.greywhite
                  ),
                ]*//*

            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(image: AssetImage(AppImages.man),height: 80,width: 80,),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person,size: 20,),
                              SizedBox(width: 1,),
                              CustomText(text: "Mehedi Hassan", color: AppColros.black, fontsize: 20, fontweight: FontWeight.w600),

                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined,size: 15,color: AppColros.maincolor),
                              SizedBox(width: 5,),
                              CustomText(text: "Bogura, 4 Matha, bogura", color: AppColros.grey, fontsize: 16, fontweight: FontWeight.w700),

                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.bloodtype_outlined,size: 15,color: AppColros.maincolor),
                              SizedBox(width: 5,),
                              CustomText(text: "Last Donate: 3 month ago", color: AppColros.grey, fontsize: 14, fontweight: FontWeight.w700),

                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.transgender,size: 15,color: AppColros.maincolor),
                              SizedBox(width: 5,),
                              CustomText(text: "Gender: Male", color: AppColros.grey, fontsize: 14, fontweight: FontWeight.w700),

                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.accessibility_new,size: 15,color: AppColros.maincolor),
                              SizedBox(width: 5,),
                              CustomText(text: "Age: 27", color: AppColros.grey, fontsize: 14, fontweight: FontWeight.w700),

                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "A+", color: AppColros.maincolor, fontsize: 30, fontweight: FontWeight.w600),
                          SizedBox(height: 15,),
                          Image(image: AssetImage(AppImages.phone_call),width: 35,height: 35,)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 3,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                        color: AppColros.assclr
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(onPressed: (){},
                          child: CustomText(text: "Accept", color: AppColros.skgreen, fontsize: 18, fontweight: FontWeight.w500)),
                      Container(
                        height: 33,
                        width: 3,
                        decoration: BoxDecoration(
                            color: AppColros.assclr
                        ),
                      ),
                      TextButton(onPressed: (){},
                          child: CustomText(text: "Cancel", color: AppColros.redlight, fontsize: 18, fontweight: FontWeight.w500)),
                    ],
                  )
                ],
              ),
            ),

          )
        ],
      ),
    );
  }
}
*/
