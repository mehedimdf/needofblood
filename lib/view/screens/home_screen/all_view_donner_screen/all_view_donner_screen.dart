// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/utils/app_strings/app_strings.dart';
import 'package:need_of_blood/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:need_of_blood/view/components/nav_bar/nav_bar.dart';
import 'package:need_of_blood/view/screens/home_screen/inner_widget/custom_list_widget.dart';
class AllViewDonnerScreen extends StatefulWidget {
  const AllViewDonnerScreen({super.key});

  @override
  State<AllViewDonnerScreen> createState() => _FindDonorsScreenState();
}

class _FindDonorsScreenState extends State<AllViewDonnerScreen> {
  List<bool> isSelected = List.generate(10, (index) => false);
  String? chooseBlood;
  List<String> bloodGp = [
    "A+",
    "A-",
    "B+",
    "B-",
    "O+",
    "O-",
    "AB+",
    "AB-",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: CustomAppBar(appBarContent: AppStrings.findDonors),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height /4,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              //color: AppColros.maincolor,
              gradient: LinearGradient(colors:
              [AppColros.l1,
                AppColros.l2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)
              ),
            ),child: Column(
            children: [
              CustomRoyelAppbar(titleName: AppStrings.viewAllDonors),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25,),
                child: Column(
                  children: [
                    Container(
                      padding:const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColros.white, width: .7),
                        borderRadius: BorderRadius.all(
                          Radius.circular(13),
                        ),
                      ),
                      child: DropdownButton<String>(
                        hint: const Text(
                          "Blood Group",
                          style: TextStyle(
                            color: AppColros.whitegrey, fontSize: 18,),
                        ),
                        borderRadius: BorderRadius.circular(15),
                        elevation: 8,
                        dropdownColor: AppColros.maincolor,
                        icon:const Icon(
                          Icons.arrow_drop_down,
                          color: AppColros.white,
                        ),
                        iconSize: 36,
                        underline:const SizedBox(),
                        isExpanded: true, // This makes the dropdown full-width
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                        value: chooseBlood,
                        onChanged: (String? newValue) {
                          setState(() {
                            chooseBlood = newValue;
                          });
                        },
                        items: bloodGp.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ),
          SizedBox(height: 15,),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.zero,
              child: Column(
                children: [
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          isSelected[index] = !isSelected[index];
                          //Get.to(()=> UserProfilePage());
                        },
                        child: const CustomListWidget(),
                      );
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BlackDaimonNavbar(currentIndex: 1),
    );
  }
}
