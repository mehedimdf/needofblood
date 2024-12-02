// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:need_of_blood/app/widgets/custom_account_widget.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/core/app_routes/app_routes.dart';
import 'package:need_of_blood/utils/app_strings/app_strings.dart';
import 'package:need_of_blood/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';
import 'package:need_of_blood/view/components/nav_bar/nav_bar.dart';

class AccountInfoScreen extends StatefulWidget {
  const AccountInfoScreen({super.key});

  @override
  State<AccountInfoScreen> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2.7,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColros.l1, AppColros.l2],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)),
                  ),
                  child: CustomRoyelAppbar(titleName: AppStrings.accountInfo),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 140),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.3,
                    decoration: BoxDecoration(
                      color: AppColros.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          Column(
                            children: [
                              // ================= My Profile =========================
                              CustomAccountWidget(
                                icon: Icons.person,
                                text: "My Profile",
                                onTap: () {
                                  Get.toNamed(AppRoutes.personalProfileScreen);
                                },
                              ),
                              // ================= Edit Profile ========================
                              CustomAccountWidget(
                                icon: Icons.edit_note_sharp,
                                text: "Edit Profile",
                                onTap: () {
                                  Get.toNamed(AppRoutes.editProfile);
                                },
                              ),
                              // ================= Change Password =====================
                              CustomAccountWidget(
                                icon: Icons.remove_red_eye,
                                text: "Change Password",
                                onTap: () {
                                  Get.toNamed(AppRoutes.changePasswordScreen);
                                },
                              ),
                              // ================= Need Of Blood Organization ========
                              CustomAccountWidget(
                                icon: Icons.home_repair_service_rounded,
                                text: "Need Of Blood Organization",
                                onTap: () {
                                  Get.toNamed(AppRoutes.needOfBloodScreen);
                                },
                              ),
                              // ================= App Developer =======================
                              CustomAccountWidget(
                                icon: Icons.app_settings_alt,
                                text: "App Developer",
                                onTap: () {
                                  Get.toNamed(AppRoutes.appDeveloperScreen);
                                },
                              ),
                              // ================= Rate Us ============================
                              CustomAccountWidget(
                                icon: Icons.star_rate,
                                text: "Rate Us",
                                onTap: () {},
                              ),
                              // ================= Share App ===========================
                              CustomAccountWidget(
                                icon: Icons.share_sharp,
                                text: "Share App",
                                onTap: () {},
                              ),
                              // ================= About Us ============================
                              CustomAccountWidget(
                                icon: Icons.align_vertical_bottom_outlined,
                                text: "About Us",
                                onTap: () {},
                              ),
                              // ================= Delete Account =======================
                              // CustomAccountWidget(
                              //   icon: Icons.delete,
                              //   text: "Delete Account",
                              //   onTap: () {
                              //     showDialog(
                              //         context: context,
                              //         builder: (context) {
                              //           return Dialog(
                              //             child: SizedBox(
                              //               height: 200,
                              //               child: Padding(
                              //                 padding: const EdgeInsets.all(20),
                              //                 child: Column(
                              //                   mainAxisAlignment: MainAxisAlignment.center,
                              //                   crossAxisAlignment: CrossAxisAlignment.center,
                              //                   children: [
                              //                     Center(
                              //                         child: CustomText(
                              //                       text: "Do you want to Delete Account? ",
                              //                       color: AppColros.black,
                              //                       fontSize: 24,
                              //                       fontWeight: FontWeight.w500,
                              //                     )),
                              //                     SizedBox(height: 20),
                              //                     Row(
                              //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              //                       children: [
                              //                         Container(
                              //                           height: 48,
                              //                           width: 130,
                              //                           decoration: BoxDecoration(
                              //                               color: AppColros.ddd,
                              //                               borderRadius: BorderRadius.circular(10)),
                              //                           child: Center(
                              //                               child: CustomText(
                              //                                   text: "No",
                              //                                   color: AppColros.black,
                              //                                   fontSize: 24,
                              //                                   fontWeight: FontWeight.w500)),
                              //                         ),
                              //                         Container(
                              //                           height: 48,
                              //                           width: 130,
                              //                           decoration: BoxDecoration(
                              //                               color: AppColros.maincolor,
                              //                               borderRadius: BorderRadius.circular(10)),
                              //                           child: Center(
                              //                               child: CustomText(
                              //                                   text: "Yes",
                              //                                   color: AppColros.white,
                              //                                   fontSize: 24,
                              //                                   fontWeight: FontWeight.w500)),
                              //                         ),
                              //                       ],
                              //                     )
                              //                   ],
                              //                 ),
                              //               ),
                              //             ),
                              //           );
                              //         });
                              //   },
                              // ),
                              // ================= Logout ============================
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
                                                        fontSize: 24,
                                                        fontWeight: FontWeight.w500,
                                                      )),
                                                  SizedBox(height: 20),
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
                                                            BorderRadius.circular(10)),
                                                        child: Center(
                                                            child: CustomText(
                                                                text: "No",
                                                                color:
                                                                AppColros.black,
                                                                fontSize: 24,
                                                                fontWeight:
                                                                FontWeight.w500)),
                                                      ),
                                                      Container(
                                                        height: 48,
                                                        width: 130,
                                                        decoration: BoxDecoration(
                                                            color: AppColros.maincolor,
                                                            borderRadius:
                                                            BorderRadius.circular(10)),
                                                        child: Center(
                                                            child: CustomText(
                                                                text: "Yes",
                                                                color:
                                                                AppColros.white,
                                                                fontSize: 24,
                                                                fontWeight:
                                                                FontWeight.w500)),
                                                      ),
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
      bottomNavigationBar: BlackDaimonNavbar(currentIndex: 3),
    );
  }
}
