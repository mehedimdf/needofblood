// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:need_of_blood/app/loginPage/verify_page.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';


import '../../common/app_images/appImages.dart';
class Forgot extends StatelessWidget {
  const Forgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top:10, left: 20, right: 20),
        child: Container(
          child: Column(
            children: [
              Image(image: AssetImage(AppImages.logo)),
              SizedBox(height: 30,),
              Column(
                children: [
                  Text("Forget Your",
                    textAlign: TextAlign.center,
                    overflow:TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 32,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),),
                  Text("Password?", style: TextStyle(fontSize: 32, color: Color(0xffD31C22), fontWeight: FontWeight.w700,),),
                  SizedBox(height: 30,),
                  Text("Enter your email address to reset your password.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),),
                  SizedBox(height: 10,),
                ],
              ),
              SizedBox(height: 50,),
              Form(child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColros.grey1),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      labelStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(Icons.mark_email_read, color: Colors.grey,),
                      fillColor: Colors.white,
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      label: Text("Enter Your Email "),
                      hintText: "Enter Your Email ",
                    ),
                  ),
                ],
              )),

            ],
          ),

        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 50, left: 30,right: 30),
        child: InkWell(onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) =>VerifyPage()));
        },
          child: Container(
            child: Text("Get Verification Code", style: TextStyle(fontSize: 18, color: Colors.white),),
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