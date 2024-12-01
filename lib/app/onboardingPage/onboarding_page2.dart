/*
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:need_of_blood/app/onboardingPage/onboarding_page3.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/app_images/appImages.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       leading: Icon(Icons.arrow_back),
     ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image(image: AssetImage(AppImages.logo))),
            SizedBox(height: 20,),
            Center(child: Image(image: AssetImage(AppImages.image1))),
            Text("Before you start\ncheck you are eligible",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: AppColros.black),),
            SizedBox(height: 10,),
            Text("You are fit and healthy",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: AppColros.grey),),

          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 70, left: 30,right: 30),
        child: InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>OnboardingPage3()));
        },
          child: Container(
            child: Text("Next", style: TextStyle(fontSize: 18, color: Colors.white),),
           height: 50,
            //width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(AppImages.button_bg)),
              //borderRadius: BorderRadius.all(Radius.circular(10)),
              //color: Color(0xffD31C22),
            ),
          ),
        ),
      ),
    );

  }
}
*/
