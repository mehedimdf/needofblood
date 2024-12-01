/*
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:need_of_blood/app/homePage/emtyscreen.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/utils/app_icons/app_icons.dart';
import 'package:need_of_blood/view/screens/home_screen/home_screen.dart';

class CustomNavbar extends StatefulWidget {
  final  int currentIndex;
  const CustomNavbar({super.key, required this.currentIndex});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {

  int currentTab=0;
  final List<Widget> screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Emtyscreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
          bucket: bucket,
          child: currentScreen),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColros.white,
        shape: CircleBorder(),
        child: Image(image: AssetImage(AppIcons.bloodDonation)),
          onPressed: (){}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 75,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                        onPressed: (){
                          setState(() {
                            currentScreen=HomeScreen();
                            currentTab=0;
                          });
                        },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home_filled,color: currentTab==0?AppColros.red:AppColros.grey1,),
                          Text("home",style: TextStyle(color: currentTab==0?AppColros.red:AppColros.grey1),)
                        ],
                      ),
                    minWidth: 40,
                    ),
                    SizedBox(width: 10,),
                    MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen=HomeScreen();
                          currentTab=1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.accessibility_new,color: currentTab==1?AppColros.red:AppColros.grey1,),
                          Text("home",style: TextStyle(color: currentTab==1?AppColros.red:AppColros.grey1),)
                        ],
                      ),
                      minWidth: 40,
                    ),

                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen=HomeScreen();
                          currentTab=2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.ac_unit,color: currentTab==2?AppColros.red:AppColros.grey1,),
                          Text("home",style: TextStyle(color: currentTab==2?AppColros.red:AppColros.grey1),)
                        ],
                      ),
                      minWidth: 40,
                    ),
                    SizedBox(width: 10,),
                    MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen=HomeScreen();
                          currentTab=3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_balance,color: currentTab==3?AppColros.red:AppColros.grey1,),
                          Text("home",style: TextStyle(color: currentTab==3?AppColros.red:AppColros.grey1),)
                        ],
                      ),
                      minWidth: 40,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/
