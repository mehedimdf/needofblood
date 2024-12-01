// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:need_of_blood/app/widgets/custom_donate_request_widget.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/utils/app_strings/app_strings.dart';
import 'package:need_of_blood/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:need_of_blood/view/components/nav_bar/nav_bar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationScreen> {
  List<bool> isSelected = List.generate(6, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            //height: 180,
            height: MediaQuery.of(context).size.height / 5.5,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColros.l1, AppColros.l2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)
              ),
            ),
            child: CustomRoyelAppbar(titleName: AppStrings.notification),
          ),
          SizedBox(height: 10,),
          //Center(child: Image(image: AssetImage(AppImages.alarm_off),height: 120,width: 120,))

          Expanded(
            child: ListView.builder(
             // scrollDirection: Axis.vertical,
              padding: EdgeInsets.zero,
              itemCount: 6,
             // physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    isSelected[index] = !isSelected[index];
                  },
                 child: CustomDonateRequestWidget(),
                );
              },
            ),
          ),
         /* Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  image: AssetImage(AppImages.man),
                  height: 80,
                  fit: BoxFit.cover,
                )),
          ),*/
        ],
      ),
      bottomNavigationBar: BlackDaimonNavbar(currentIndex: 2),
    );
  }
}
