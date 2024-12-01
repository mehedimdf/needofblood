/*
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:need_of_blood/app/homePage/custom_accept_widget.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/app_images/appImages.dart';
import 'package:need_of_blood/common/custom_text/custom_text.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<bool> isSelected = List.generate(6, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColros.maincolor,
        toolbarHeight: 80,
        title: CustomText(
            text: "Notification",
            color: AppColros.black,
            fontsize: 25,
            fontweight: FontWeight.w500),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Center(child: Image(image: AssetImage(AppImages.alarm_off),height: 120,width: 120,))

              ListView.builder(
                itemCount: 6,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      isSelected[index] = !isSelected[index];
                    },
                    child: const CustomAcceptWidget(),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image(
                      image: AssetImage(AppImages.banner2),
                      height: 80,
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
