// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/utils/app_icons/app_icons.dart';
import 'package:need_of_blood/utils/app_strings/app_strings.dart';
import 'package:need_of_blood/view/components/custom_image/custom_image.dart';
import 'package:need_of_blood/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Allow the entire screen to be scrollable
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 6,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColros.l1, AppColros.l2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
              ),
              child: CustomRoyelAppbar(
                  titleName: AppStrings.donateThisOrganization),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: AppColros.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text:
                            "আপনি যদি দান করতে চান, অনুগ্রহ করে নীচের ছবিতে ক্লিক করুন এবং নম্বরটি কপি হয়ে যাবে । তার পর আপনার ফোন থেকে এই নম্বরে সেন্ড মানি করুন । ",
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColros.black,
                        textAlign: TextAlign.start,
                        bottom: 20,
                        maxLines: 4,
                      ),
                      Container(
                        height: 80,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color: AppColros.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border:
                              Border.all(color: AppColros.whitegrey, width: 2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CustomImage(
                                    imageSrc: AppIcons.bkashIcon,
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomText(
                                        text: "Bkash (Personal)",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: AppColros.black,
                                      ),
                                      CustomText(
                                        text: "01518602063",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: AppColros.black,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: CustomImage(
                                  imageSrc: AppIcons.copyIcon,
                                  width: 30,
                                  height: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 80,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color: AppColros.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border:
                              Border.all(color: AppColros.whitegrey, width: 2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CustomImage(
                                    imageSrc: AppIcons.nagadIcon,
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomText(
                                        text: "Nagad (Personal)",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: AppColros.black,
                                      ),
                                      CustomText(
                                        text: "01518602063",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: AppColros.black,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: CustomImage(
                                  imageSrc: AppIcons.copyIcon,
                                  width: 30,
                                  height: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 80,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color: AppColros.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border:
                              Border.all(color: AppColros.whitegrey, width: 2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CustomImage(
                                    imageSrc: AppIcons.rocketIcon,
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomText(
                                        text: "Rocket (Personal)",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: AppColros.black,
                                      ),
                                      CustomText(
                                        text: "01518602063",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: AppColros.black,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: CustomImage(
                                  imageSrc: AppIcons.copyIcon,
                                  width: 30,
                                  height: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      CustomText(
                        text:
                            "রাসুলুল্লাহ (সাঃ) বলেছেন-\n\nযে ব্যক্তি (মানুষকে) ন্যায়পরায়ণতার দিকে আহবান করবে, তার জন্য তাদের পুরস্কারের মতো পুরস্কার (নিশ্চিত) থাকবে যারা তা মেনে চলে, তাদের পুরষ্কার কোন দিক থেকে হ্রাস করা হবে না।\n\n(সহীহ মুসলিমঃ ২৬৭৪)",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        maxLines: 8,
                        color: AppColros.black,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
