/*
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:need_of_blood/app/loginPage/reset_page.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../common/app_colors/appColors.dart';
import '../../common/app_images/appImages.dart';
import 'forgot.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Container(
          child: Column(
            children: [
              Image(image: AssetImage(AppImages.logo)),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Give ',
                      style: TextStyle(
                        color: AppColros.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Verification\n',
                          style: TextStyle(
                            color: AppColros.red,
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'Code',
                          style: TextStyle(
                            fontSize: 32,
                            color: AppColros.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Enter the code that was sent to your email.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  enableActiveFill: true,
                  animationType: AnimationType.fade,
                  animationDuration: Duration(milliseconds: 300),
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 65,
                    fieldWidth: size.width * 0.15,
                    inactiveColor: Colors.grey,
                    activeColor: AppColros.maincolor,
                    activeFillColor: AppColros.white,
                    inactiveFillColor: AppColros.white,
                    selectedFillColor: AppColros.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn’t receive the code?", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  SizedBox(width: 10,),
                  Text("Resend", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 50, left: 30, right: 30),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ResetPage()));
          },
          child: Container(
            child: Text(
              "Verify",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            height: 50,
            width: 280,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xffD31C22),
            ),
          ),
        ),
      ),
    );
  }
}
*/
