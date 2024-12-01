/*
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:need_of_blood/app/homePage/home_page.dart';
import 'package:need_of_blood/app/loginPage/forgot.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/app_images/appImages.dart';
import 'package:need_of_blood/common/custom_text/custom_text.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool firstValue = false;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image(image: AssetImage(AppImages.logo))),
                CustomText(text: "Sing In", color: AppColros.red, fontsize: 36, fontweight: FontWeight.w800),
                SizedBox(height: 40,),
                Text("Welcome to (N.B.O.B) Blood Bank,",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: AppColros.black),),
                SizedBox(height: 30,),
                Text("Already Registered User Login here.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: AppColros.grey),),
                SizedBox(height: 50,),
                Form(
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Phone Number",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColros.grey1),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            labelStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Icon(Icons.phone, color: Colors.grey,),
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColros.red),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            label: Text("Your Phone Number"),
                            hintText: "Your Phone Number",
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Password",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColros.grey1),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            labelStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Icon(Icons.password, color: Colors.grey,),
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColros.red),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            //label: Text("Your Password"),
                            hintText: "Your Password",
                          ),
                        ),
                        SizedBox(height: 10,),
                      ],
                    )
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: firstValue,focusColor: Colors.red,activeColor: Colors.red,
                                onChanged: (value){
                                  setState(() {
                                    firstValue=value!;
                                  });
                                }),
                            Text("Remember me", style: TextStyle(fontSize: 16, color: Colors.black),),
                          ],
                        ),
                        InkWell(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>Forgot()));
                        },
                            child: Text("Forgot Password", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,decoration: TextDecoration.underline)))
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 80,),
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage()));
                },
                  child: Container(
                    child: Text("Sing IN", style: TextStyle(fontSize: 18, color: Colors.white),),
                    height: 50,
                    width: 280,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffD31C22),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/
