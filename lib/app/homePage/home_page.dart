/*
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:need_of_blood/app/homePage/donate_request_page.dart';
import 'package:need_of_blood/app/homePage/graph_chart_list.dart';
import 'package:need_of_blood/app/homePage/find_donors_page.dart';
import 'package:need_of_blood/app/homePage/user_profile_page.dart';
import 'package:need_of_blood/app/homePage/view_all_donor_page.dart';
import 'package:need_of_blood/app/nav_bar/nav_bar.dart';
import 'package:need_of_blood/app/widgets/custom_list_widget.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/app_images/appImages.dart';
import 'package:need_of_blood/common/custom_text/custom_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final List<String> imgList = [
  AppImages.slider1,
  AppImages.slider2,
  AppImages.slider3,
];

late List<Widget> _pages;


class _HomePageState extends State<HomePage> {
  List<bool> isSelected = List.generate(6, (index) => false);
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages=List.generate(
        imagePaths.length,
        (index)=>ImagePlaceholder(
          imagepath: imagePaths[index],
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //backgroundColor: AppColros.white2,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                Container(
                  //height: 250,
                  height: MediaQuery.of(context).size.height/3.8,
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
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 60, left: 20, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Home",
                              style: GoogleFonts.lobster(
                                  fontSize: 32, fontWeight: FontWeight.w500,color: AppColros.white),
                            ),
                            // CircleAvatar(backgroundImage: AssetImage(AppImages.man)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 140,
                    right: MediaQuery.sizeOf(context).width * 0.02,
                    left: MediaQuery.sizeOf(context).width * 0.02,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          initialPage: 0,
                          aspectRatio: 2.0,
                          enlargeCenterPage: true,
                          //enlargeStrategy: CenterPageEnlargeStrategy.height,
                        ),
                        items: List.generate(
                            imgList.length,
                            (index) => ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    imgList[index],
                                    fit: BoxFit.cover,
                                    // height: ,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                )),
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: AppColros.white,
                        borderRadius: BorderRadius.circular(20),
 boxShadow: const [
                          BoxShadow(
                              offset: Offset(1.0, 1.0),
                              spreadRadius: 4.0,
                              blurRadius: 4.0,
                              color: AppColros.greywhite)
                        ]

                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FindDonorsPage()));
                      },
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image: AssetImage(AppImages.search3),
                            width: 50,
                            height: 50,
                          ),
                          CustomText(
                              text: "Find Donors",
                              color: AppColros.black,
                              fontsize: 15,
                              fontweight: FontWeight.w500)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GraphChartList()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: AppColros.white,
                          borderRadius: BorderRadius.circular(20),
 boxShadow: const [
                            BoxShadow(
                                offset: Offset(1.0, 1.0),
                                spreadRadius: 4.0,
                                blurRadius: 4.0,
                                color: AppColros.greywhite)
                          ]
),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image: AssetImage(AppImages.graph),
                            width: 50,
                            height: 50,
                          ),
                          CustomText(
                              text: "Donate Graph",
                              color: AppColros.black,
                              fontsize: 15,
                              fontweight: FontWeight.w500)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DonateRequestPage()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: AppColros.white,
                          borderRadius: BorderRadius.circular(20),
 boxShadow: const [
                            BoxShadow(
                                offset: Offset(1.0, 1.0),
                                spreadRadius: 4.0,
                                blurRadius: 4.0,
                                color: AppColros.greywhite)
                          ]
),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image: AssetImage(AppImages.donation),
                            width: 50,
                            height: 50,
                          ),
                          CustomText(
                              text: "Request Blood",
                              color: AppColros.black,
                              fontsize: 15,
                              fontweight: FontWeight.w500)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                      text: "Donation Need",
                      color: Colors.grey,
                      fontsize: 20,
                      fontweight: FontWeight.w700),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ViewAllDonorPage()));
                      },
                      child: const CustomText(
                          text: "view all",
                          color: Colors.grey,
                          fontsize: 20,
                          fontweight: FontWeight.w300)),
                ],
              ),
            ),
            ListView.builder(
              itemCount: 6,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    isSelected[index] = !isSelected[index];
                    Get.to(()=> UserProfilePage());

                  },
                  child: const CustomListWidget(),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(image: AssetImage(AppImages.banner2),height: 80,fit: BoxFit.cover,)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(
        currentIndex: 0,
      ),
    );
  }
}
*/
