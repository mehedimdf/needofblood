import 'dart:async';
import 'package:flutter/material.dart';
import 'package:need_of_blood/app/homePage/home_page.dart';
import 'package:need_of_blood/app/onboardingPage/onboarding_page1.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/app_images/appImages.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Navigate to the next screen after a 3-second delay
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingPage1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppImages.splash_BackGround),
            fit: BoxFit.cover,opacity: 0.7),
      ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage(AppImages.logo)),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 60,top: 30),
                child: LinearProgressIndicator(
                  color: AppColros.red,
                  borderRadius: BorderRadius.circular(5),
                  backgroundColor: AppColros.splach_bg,
                  minHeight: 10,
                  valueColor: AlwaysStoppedAnimation(Colors.red),
                ),
              )
            ],
          ),
    ));
  }
}
