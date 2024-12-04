// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/utils/app_icons/app_icons.dart';
import 'package:need_of_blood/utils/app_images/app_images.dart';
import 'package:need_of_blood/view/components/custom_image/custom_image.dart';
import 'package:need_of_blood/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';

class AppDeveloperScreen extends StatelessWidget {
  const AppDeveloperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 280,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50)),
            image: DecorationImage(
              image: AssetImage(AppImages.manCover),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              CustomRoyelAppbar(),
              Center(
                child: const Image(
                  image: AssetImage(AppImages.man),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      // height: 200,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        color: AppColros.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          CustomText(
                              text: "Mehedi Bin Abdus Salam",
                              color: AppColros.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                          CustomText(
                              text: "App Developer",
                              color: AppColros.greylabel,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: AppColros.greylabel,
                              ),
                              CustomText(
                                  text: "Dhaka",
                                  color: AppColros.greylabel,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    CustomText(
                                        text: "116",
                                        color: AppColros.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                    CustomText(
                                        text: "Favorited",
                                        color: AppColros.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ],
                                ),
                                Center(
                                    child: FloatingActionButton(
                                        mini: true,
                                        shape: CircleBorder(),
                                        elevation: 1,
                                        backgroundColor: AppColros.redColor,
                                        onPressed: () {},
                                        child: Icon(Icons.favorite_border))),
                                Column(
                                  children: [
                                    CustomText(
                                        text: "116",
                                        color: AppColros.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                    CustomText(
                                        text: "Profile Views",
                                        color: AppColros.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),



                    ///====================Skills
                   /* Stack(
                      clipBehavior: Clip.none,
                      children: [
                        // Main Container for Skills Section
                        Container(
                          padding: EdgeInsets.all(15),
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            color: AppColros.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,),
                              CustomText(
                                text: "SKILLS",
                                color: AppColros.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                bottom: 10,
                              ),

                              // First row of skill containers (horizontal scrollable)
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    // Skill Container 1
                                    SkillContainer(
                                      label: "Flutter & Dart",
                                      backgroundColor: AppColros.orange,
                                      textColor: AppColros.white,
                                    ),
                                    // Skill Container 2
                                    SkillContainer(
                                      label: "Versatile Mobile App Creator",
                                      backgroundColor: AppColros.skblue,
                                      textColor: AppColros.white,
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 10),

                              // Second row of skill containers (horizontal scrollable)
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    // Skill Container 3
                                    SkillContainer(
                                      label: "Innovative App Developer",
                                      backgroundColor: AppColros.skgreen,
                                      textColor: AppColros.white,
                                    ),
                                    // Skill Container 4
                                    SkillContainer(
                                      label: "Android/iOS App",
                                      backgroundColor: AppColros.cardclr,
                                      textColor: AppColros.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Floating Action Button
                        Positioned(
                          top: -25,
                          left: 20,
                          child: FloatingActionButton(
                            backgroundColor: AppColros.redColor,
                            onPressed: () {},
                            focusColor: AppColros.maincolor,
                            child: CustomImage(
                              imageSrc: AppIcons.lineIcon,
                              height: 40,
                              width: 40,
                              imageColor: AppColros.white,
                            ),
                          ),
                        ),
                      ],
                    ),*/
                   ///============ Versity =========
                    ///====================================
                 // SizedBox(height: 40,),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          // height: 100,
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            color: AppColros.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            children: [
                              CustomText(
                                top: 20,
                                text: "Southeast University",
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                bottom: 5,
                              ),
                              CustomText(
                                text: "GRADUATE",
                                color: AppColros.redColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                bottom: 5,
                              ),
                              CustomText(
                                text:
                                "B.Sc. in Computer Science and Engineering.(CSE)",
                                color: AppColros.greylabel,
                                maxLines: 2,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                bottom: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 30,
                                    color: AppColros.greylabel,
                                  ),
                                  CustomText(
                                      text: "Mohakhali Tajgao",
                                      color: AppColros.greylabel,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: -25,
                          left: 20,
                          child: Center(
                              child: FloatingActionButton(
                                  backgroundColor: AppColros.redColor,
                                  onPressed: () {},
                                  focusColor: AppColros.maincolor,
                                  child: CustomImage(
                                    imageSrc: AppIcons.education,
                                    height: 40,
                                    width: 40,
                                    imageColor: AppColros.white,
                                  ))),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
     /* Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 20, right: 20, top: 45, bottom: 20),
            // height: 100,

            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: AppColros.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Colors.transparent,
                      shadowColor: AppColros.grey2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      elevation: 10,
                      child: Container(
                        height: 47,
                        width: 47,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColros.white,
                        ),
                        child: Image(
                            image: AssetImage(AppIcons.google)),
                      ),
                    ),
                    Card(
                      color: Colors.transparent,
                      shadowColor: AppColros.grey2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      elevation: 10,
                      child: Container(
                        height: 47,`
                        width: 47,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColros.white,
                        ),
                        child: Image(
                            image: AssetImage(AppIcons.google)),
                      ),
                    ),
                    Card(
                      color: Colors.transparent,
                      shadowColor: AppColros.grey2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      elevation: 10,
                      child: Container(
                        height: 47,
                        width: 47,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColros.white,
                        ),
                        child: Image(
                            image: AssetImage(AppIcons.google)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: -25,
            left: 20,
            child: Center(
                child: FloatingActionButton(
                    backgroundColor: AppColros.redColor,
                    onPressed: () {},
                    focusColor: AppColros.maincolor,
                    child: CustomImage(
                      imageSrc: AppIcons.global,
                      height: 40,
                      width: 40,
                      imageColor: AppColros.white,
                    ))),
          ),
                  ],
                ),*/
              ]),
              )],
          ),
        ),
      ],
    ));
  }
}

/*class SkillContainer extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color textColor;

  SkillContainer({
    required this.label,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 10), // Spacing between containers
      height: 40,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(1.0, 1.0),
            spreadRadius: 4.0,
            blurRadius: 4.0,
            color: AppColros.white.withOpacity(0.4),
          ),
        ],
      ),
      child: Center(
        child: CustomText(
          text: label,
          color: textColor,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}*/
