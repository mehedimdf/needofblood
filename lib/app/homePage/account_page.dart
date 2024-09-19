// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:need_of_blood/app/homePage/app_developer_page.dart';
import 'package:need_of_blood/app/homePage/edit_profile.dart';
import 'package:need_of_blood/app/homePage/my_profile_page.dart';
import 'package:need_of_blood/app/homePage/need_of_blood_info_page.dart';
import 'package:need_of_blood/app/homePage/user_profile_page.dart';
import 'package:need_of_blood/app/homePage/change_password_page.dart';
import 'package:need_of_blood/app/nav_bar/nav_bar.dart';
import 'package:need_of_blood/app/widgets/custom_account_widget.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/app_images/appImages.dart';
import 'package:need_of_blood/common/custom_text/custom_text.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: AppColros.maincolor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(75),
                        bottomRight: Radius.circular(75)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.3,
                    //width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                      color: AppColros.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 25, left: 20, right: 20),
                      child: Column(
                        children: [
                          ///=================Py Profile ========================///
                          CustomAccountWidget(
                            icon: Icons.person,
                            text: "My Profile",
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MyProfilePage()));
                            },
                          ),

                          ///=================Edit Profile ========================///
                          CustomAccountWidget(
                            icon: Icons.edit_note_sharp,
                            text: "Edit Profile",
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EditProfile()));
                            },
                          ),

                          ///=================Change Password ========================///
                          CustomAccountWidget(
                            icon: Icons.remove_red_eye,
                            text: "Change Password",
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ChangePasswordPage()));
                            },
                          ),

                          ///=================Need Of Blood Organization ========================///
                          CustomAccountWidget(
                            icon: Icons.home_repair_service_rounded,
                            text: "Need Of Blood Organization",
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NeedOfBloodInfoPage()));
                            },
                          ),

                          ///=================App Developer ========================///
                          CustomAccountWidget(
                            icon: Icons.app_settings_alt,
                            text: "App Developer",
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AppDeveloperPage()));
                            },
                          ),

                          ///=================Rate Us ========================///
                          CustomAccountWidget(
                            icon: Icons.star_rate,
                            text: "Rate Us",
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MyProfilePage()));
                            },
                          ),

                          ///=================Share App ========================///
                          CustomAccountWidget(
                            icon: Icons.share_sharp,
                            text: "Share App",
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MyProfilePage()));
                            },
                          ),

                          ///=================About Us ========================///
                          CustomAccountWidget(
                            icon: Icons.align_vertical_bottom_outlined,
                            text: "About Us",
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MyProfilePage()));
                            },
                          ),

                          ///=================Delete Account ========================///
                          CustomAccountWidget(
                            icon: Icons.delete,
                            text: "Delete Account",
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      child: SizedBox(
                                        height: 200,
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Center(
                                                  child: CustomText(
                                                text:
                                                    "Do you want to Delete Account? ",
                                                color: AppColros.black,
                                                fontsize: 24,
                                                fontweight: FontWeight.w500,
                                              )),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    height: 48,
                                                    width: 130,
                                                    decoration: BoxDecoration(
                                                        color: AppColros.ddd,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Center(
                                                        child: CustomText(
                                                            text: "No",
                                                            color:
                                                                AppColros.black,
                                                            fontsize: 24,
                                                            fontweight:
                                                                FontWeight
                                                                    .w500)),
                                                  ),
                                                  Container(
                                                    height: 48,
                                                    width: 130,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            AppColros.maincolor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Center(
                                                        child: CustomText(
                                                            text: "Yes",
                                                            color:
                                                                AppColros.white,
                                                            fontsize: 24,
                                                            fontweight:
                                                                FontWeight
                                                                    .w500)),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                          ),

                          ///=================Logout ========================///
                          CustomAccountWidget(
                            icon: Icons.logout,
                            text: "Logout",
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      child: SizedBox(
                                        height: 200,
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Center(
                                                  child: CustomText(
                                                text:
                                                    "Do you want to logout your profile?",
                                                color: AppColros.black,
                                                fontsize: 24,
                                                fontweight: FontWeight.w500,
                                              )),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    height: 48,
                                                    width: 130,
                                                    decoration: BoxDecoration(
                                                        color: AppColros.ddd,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Center(
                                                        child: CustomText(
                                                            text: "No",
                                                            color:
                                                                AppColros.black,
                                                            fontsize: 24,
                                                            fontweight:
                                                                FontWeight
                                                                    .w500)),
                                                  ),
                                                  Container(
                                                    height: 48,
                                                    width: 130,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            AppColros.maincolor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Center(
                                                        child: CustomText(
                                                            text: "Yes",
                                                            color:
                                                                AppColros.white,
                                                            fontsize: 24,
                                                            fontweight:
                                                                FontWeight
                                                                    .w500)),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(
        currentIndex: 3,
      ),
    );
  }
}
