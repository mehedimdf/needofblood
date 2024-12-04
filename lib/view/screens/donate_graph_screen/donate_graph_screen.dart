// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/utils/app_images/app_images.dart';
import 'package:need_of_blood/utils/app_strings/app_strings.dart';
import 'package:need_of_blood/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';
import 'package:need_of_blood/view/screens/donate_graph_screen/inner_widget/custom_graph_card.dart';
import 'package:pie_chart/pie_chart.dart';

class DonateGraphScreen extends StatefulWidget {
  @override
  State<DonateGraphScreen> createState() => _DonateGraphScreenState();
}

class _DonateGraphScreenState extends State<DonateGraphScreen> {


  final List<String> imgList = [
    AppImages.sliderimage1,
    AppImages.sliderimage1,
    AppImages.sliderimage1,
  ];

  late List<Widget> _pages;
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
    //  backgroundColor: AppColros.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //height: 180,
              height: MediaQuery.of(context).size.height / 6,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRoyelAppbar(titleName: AppStrings.graphChart),
                ],
              ),
            ),
            SizedBox(height: 10,),
            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  initialPage: 0,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  height: 140.h
                //enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: List.generate(
                  imgList.length,
                      (index) => ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imgList[index],
                      fit: BoxFit.cover,
                      // height: ,
                      width: MediaQuery.of(context).size.width,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CustomText(
                      text: "Activities",
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomGraphCard(
                      count: "2K+",
                      title: "Accounts",
                      color: AppColros.greenlight,
                      countColor: AppColros.ab,
                      titleColor: AppColros.grey,
                    ),
                    CustomGraphCard(
                      count: "1.5K+",
                      title: "Donner",
                      color: AppColros.skbluelight,
                      countColor: AppColros.skblue,
                      titleColor: AppColros.grey,
                    ),
                    CustomGraphCard(
                      count: "1K+",
                      title: "Receivers",
                      color: AppColros.orangelight,
                      countColor: AppColros.orange,
                      titleColor: AppColros.grey,
                    ),
                  ],
                ),
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
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
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
            /* Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: AssetImage(AppImages.banner1),
                    height: 80,
                    fit: BoxFit.cover,
                  )),
            ),*/
          ],
        ),
      ),
    );
  }
}
