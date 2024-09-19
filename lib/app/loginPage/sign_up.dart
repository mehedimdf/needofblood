// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:need_of_blood/app/loginPage/login_page.dart';
import '../../common/app_colors/appColors.dart';
import '../../common/app_images/appImages.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool firstValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(image: AssetImage(AppImages.logo)),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Text("Welcome Here!",
                      textAlign: TextAlign.center,
                      overflow:TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 32,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),),
                    Text("Create An Account.", style: TextStyle(fontSize: 32, color: Color(0xffD31C22), fontWeight: FontWeight.w700,),),
                    SizedBox(height: 20,),
                    Text("Fill in your information.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),),
                    SizedBox(height: 10,),
                  ],
                ),
                SizedBox(height: 20,),
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
                        label: Text("Full Name"),
                        hintText: "Enter Your Full Name",
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColros.grey1),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        labelStyle: TextStyle(color: Colors.grey),
                        suffixIcon: Icon(Icons.phone_android, color: Colors.grey,),
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        label: Text("Phone Number"),
                        hintText: "Enter Your Number",
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColros.grey1),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        labelStyle: TextStyle(color: Colors.grey),
                        suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey,),
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        label: Text("Password"),
                        hintText: "Enter Your Password",
                      ),
                    ),
                    /*SizedBox(height: 20,),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColros.grey1),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        labelStyle: TextStyle(color: Colors.grey),
                        suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey,),
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        label: Text("Confirm Password"),
                        hintText: "Enter Your Password",
                      ),
                    ),*/
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Checkbox(value: firstValue,focusColor: Colors.red,activeColor: Colors.red,
                                    onChanged: (value){
                                      setState(() {
                                        firstValue=value!;
                                      });
                                    }),
                                Text("Agree with ", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),),
                              ],
                            ),
                            InkWell(onTap: (){
                              //Navigator.push(context, MaterialPageRoute(builder: (context) =>Forgot()));
                            },
                                child: Text("Terms and Services.", style: TextStyle(fontSize: 14,)))
                          ],
                        ),
                      ],
                    ),
                    /*Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?  ", style: TextStyle(fontSize: 16),),
            
                          InkWell(onTap :(){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>GetVerifYPage()));
                          },child: Text("Sign In", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),)),
                        ],
                      ),
                    ),*/
                  ],
                ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 50, left: 30, right: 30),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginPage()));
          },
          child: Container(
            child: Text(
              "Sign Up",
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
