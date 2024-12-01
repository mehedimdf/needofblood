/*
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/app_images/appImages.dart';
import 'package:need_of_blood/common/custom_text/custom_text.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColros.maincolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/4.7,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: AppColros.maincolor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(75),
                        bottomRight: Radius.circular(75)),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              */
/*border:
                                  Border.all(width: 5, color: AppColros.white),*//*

                              */
/*boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                              ],*//*

                            ),
                            child: const Image(
                              image: AssetImage(AppImages.man),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Mehedi Bin Abdus Salam",
                          style: GoogleFonts.roboto(
                              fontSize: 30, color: AppColros.greywhite),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 40, right: 40, bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        children: [
                          CustomText(
                              text: "A+",
                              color: AppColros.redlight,
                              fontsize: 40,
                              fontweight: FontWeight.w700),
                          CustomText(
                              text: "Blood Group",
                              color: AppColros.grey,
                              fontsize: 16,
                              fontweight: FontWeight.w400),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 3,
                            decoration:
                                const BoxDecoration(color: AppColros.greywhite),
                          )
                        ],
                      ),
                      const Column(
                        children: [
                          CustomText(
                              text: "10 ",
                              color: AppColros.skgreen,
                              fontsize: 40,
                              fontweight: FontWeight.w700),
                          CustomText(
                              text: "Donate Count",
                              color: AppColros.grey,
                              fontsize: 16,
                              fontweight: FontWeight.w400),
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40,top: 20),
                      child: Container(
                        height: 40,
                        //width: 200,
                        decoration: BoxDecoration(
                            color: AppColros.greywhite,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                                text: "Last Donate : ",
                                color: AppColros.grey,
                                fontsize: 16,
                                fontweight: FontWeight.w500),
                            CustomText(
                                text: "3 Month Ago",
                                color: AppColros.grey,
                                fontsize: 16,
                                fontweight: FontWeight.w500),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  //Name
                  const CustomText(
                      text: "Name",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  const SizedBox(width: 20),
                  const TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      icon: Icon(
                        Icons.person,
                        color: AppColros.maincolor,
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey),
                      //label: Text("Your Password"),
                      hintText: "Mehedi Bin Abdus Salam",
                    ),
                  ),

                  const SizedBox(height: 10),
                  //Phone Number
                  //Name
                  const CustomText(
                      text: "Phone Number",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  const SizedBox(width: 20),
                  const TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      icon: Icon(
                        Icons.call,
                        color: AppColros.maincolor,
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey),
                      //label: Text("Your Password"),
                      hintText: "01618-602063",
                    ),
                  ),
                  const SizedBox(height: 10),
                  //Date of Birth
                  const CustomText(
                      text: "Date of Birth",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  const SizedBox(width: 20),
                  const TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      icon: Icon(
                        Icons.calendar_month,
                        color: AppColros.maincolor,
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey),
                      //label: Text("Your Password"),
                      hintText: "13/03/1997",
                    ),
                  ),
                  const SizedBox(height: 10),
                  //Gender
                  const CustomText(
                      text: "Gender",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  const SizedBox(width: 20),
                  const TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      icon: Icon(
                        Icons.transgender,
                        color: AppColros.maincolor,
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey),
                      //label: Text("Your Password"),
                      hintText: "Male",
                    ),
                  ),
                  const SizedBox(height: 10),
                  //Blood Group
                  const CustomText(
                      text: "Blood Group",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  const SizedBox(width: 20),
                  const TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      icon: Icon(
                        Icons.bloodtype,
                        color: AppColros.maincolor,
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey),
                      //label: Text("Your Password"),
                      hintText: "A+",
                    ),
                  ),
                  const SizedBox(height: 10),
                  //Division
                  const CustomText(
                      text: "Division",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  const SizedBox(width: 20),
                  const TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      icon: Icon(
                        Icons.label_important_sharp,
                        color: AppColros.maincolor,
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Dhaka",
                    ),
                  ),
                  const SizedBox(height: 10),
                  //Districts
                  const CustomText(
                      text: "Districts",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  const SizedBox(width: 20),
                  const TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      icon: Icon(
                        Icons.home_filled,
                        color: AppColros.maincolor,
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Bogura",
                    ),
                  ),
                  const SizedBox(height: 10),
                  //Address
                  const CustomText(
                      text: "Full Address",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  const SizedBox(width: 20),
                  const TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      icon: Icon(
                        Icons.location_pin,
                        color: AppColros.maincolor,
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Erulia Bogura, Bogura Sadar",
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
*/
