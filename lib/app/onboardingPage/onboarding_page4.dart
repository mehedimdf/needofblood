/*
import 'package:flutter/material.dart';
import 'package:need_of_blood/app/loginPage/login_page.dart';
import 'package:need_of_blood/app/loginPage/sing_in_up.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/app_images/appImages.dart';
class OnboardingPage4 extends StatelessWidget {
  const OnboardingPage4({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image(image: AssetImage(AppImages.logo))),
            SizedBox(height: 25,),
            Center(child: Image(image: AssetImage(AppImages.image3))),
            SizedBox(height: 30,),
            Text("Before you start check you are eligible",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: AppColros.black),),
            SizedBox(height: 10,),
            Text("You weigh between 7 stone 12 lbs and 25stone (50kg and 158kg)",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: AppColros.grey),textAlign: TextAlign.center,maxLines: 2,),

          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 70, left: 30,right: 30),
        child: InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>SingInUp()));
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
