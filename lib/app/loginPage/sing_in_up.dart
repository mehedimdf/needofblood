/*
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:need_of_blood/app/loginPage/login_page.dart';
import 'package:need_of_blood/app/loginPage/sign_up.dart';
import '../../common/app_images/appImages.dart';
class SingInUp extends StatelessWidget {
  const SingInUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0,left: 20,right: 20,),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                      image: AssetImage(AppImages.logo)),
                  SizedBox(height: 40,),
                  Text("Now continue after register in",maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow:TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 24,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),),
                  Text("Felpus.", style: TextStyle(fontSize: 24, color: Color(0xffD31C22), fontWeight: FontWeight.w600,),),
                  SizedBox(height: 30,),
                  Image(
                      image: AssetImage(AppImages.image10,),),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginPage()));
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
                        SizedBox(height: 15,),
                        InkWell(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>SignUp()));
                        },
                          child: Container(
                            child: Text("Sing UP", style: TextStyle(fontSize: 18, color: Colors.red),),
                            height: 50,
                            width: 280,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(color: Colors.red, blurRadius: 2)
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Color(0xffFFFFFF),
                              border: Border()
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
*/
