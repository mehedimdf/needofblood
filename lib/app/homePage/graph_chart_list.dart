/*
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/app_images/appImages.dart';
import 'package:need_of_blood/common/custom_text/custom_text.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphChartList extends StatelessWidget {
  Map<String, double> dataMap = {
    "A+ Blood": 10,
    "A- Blood": 8,
    "B+ Blood": 6,
    "B- Blood": 15,
    "O+ Blood": 5,
    "O- Blood": 9,
    "AB+ Blood": 14,
    "AB- Blood": 7,
  };
  List<Color> colorsList = [
    AppColros.a.withOpacity(0.6),
    AppColros.aa.withOpacity(0.6),
    AppColros.b.withOpacity(0.6),
    AppColros.bb.withOpacity(0.6),
    AppColros.o.withOpacity(0.6),
    AppColros.oo.withOpacity(0.6),
    AppColros.ab.withOpacity(0.6),
    AppColros.abAb.withOpacity(0.6),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: AppColros.maincolor,
      appBar: AppBar(
        foregroundColor: AppColros.white,
        scrolledUnderElevation: 0,
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: AppColros.maincolor,
        title: CustomText(
            text: "Graph Chart",
            color: AppColros.white,
            fontsize: 30,
            fontweight: FontWeight.w700),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                Container(
                  //height: 180,
                  height: MediaQuery.of(context).size.height / 6.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: AppColros.maincolor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(75),
                        bottomRight: Radius.circular(75)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  ),
                ),
                Positioned(
                  top: 50,
                  left: MediaQuery.sizeOf(context).width * 0.08,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        color: AppColros.white,
                        borderRadius: BorderRadius.circular(20),
 boxShadow: const [
                          BoxShadow(
                            offset: Offset(1.0, 1.0),
                            spreadRadius: 1.0,
                            blurRadius: 2.0,
                            color: AppColros.greywhite,
                          ),
                        ]

                    ),
                    child: Image(image: AssetImage(AppImages.slider4)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CustomText(
                      text: "Our Contribution",
                      color: Colors.grey,
                      fontsize: 20,
                      fontweight: FontWeight.w500),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: AppColros.greenlight,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) =>const FindDonorsPage()));
                      },
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              text: "2k+",
                              color: AppColros.skgreen,
                              fontsize: 32,
                              fontweight: FontWeight.w500),
                          SizedBox(
                            height: 2,
                          ),
                          CustomText(
                              text: "Accounts",
                              color: AppColros.grey,
                              fontsize: 15,
                              fontweight: FontWeight.w500),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: AppColros.skbluelight,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) =>const FindDonorsPage()));
                      },
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              text: "1.5k+",
                              color: AppColros.skblue,
                              fontsize: 32,
                              fontweight: FontWeight.w500),
                          SizedBox(
                            height: 2,
                          ),
                          CustomText(
                              text: "Blood Donner",
                              color: AppColros.grey,
                              fontsize: 15,
                              fontweight: FontWeight.w500),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: AppColros.orangelight,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) =>const FindDonorsPage()));
                      },
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              text: "1k+",
                              color: AppColros.orange,
                              fontsize: 32,
                              fontweight: FontWeight.w500),
                          SizedBox(
                            height: 2,
                          ),
                          CustomText(
                              text: "Receive Blood",
                              color: AppColros.grey,
                              fontsize: 15,
                              fontweight: FontWeight.w500),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CustomText(
                      text: "Our Contribution Graph Chart",
                      color: Colors.grey,
                      fontsize: 20,
                      fontweight: FontWeight.w500),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                children: [
                  PieChart(
                    colorList: colorsList,
                    dataMap: dataMap,
                    //chartRadius: MediaQuery.of(context).size.width/1.5,
                    legendOptions: const LegendOptions(
                      legendPosition: LegendPosition.right,
                    ),
                    chartValuesOptions: const ChartValuesOptions(
                        showChartValuesInPercentage: true),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: AssetImage(AppImages.banner1),
                    height: 80,
                    fit: BoxFit.cover,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
*/
