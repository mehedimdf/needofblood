/*
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:need_of_blood/app/nav_bar/nav_bar.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/app_images/appImages.dart';
import 'package:need_of_blood/common/custom_text/custom_text.dart';
class DonnerAccountPage extends StatefulWidget {
  const DonnerAccountPage({super.key});

  @override
  State<DonnerAccountPage> createState() => _DonnerAccountPageState();
}

class _DonnerAccountPageState extends State<DonnerAccountPage> {
  final TextEditingController _dateController = TextEditingController();
  String? chooseBlood;
  String? chooseGender;
  String? chooseDivision;
  String? chooseDistricts;
  var districtsGp = <String>[
    "Bogura",
    "Jaipurhat",
    "Naogaon ",
  ];
  List<String> divisionGp = [
    "Dhaka",
    "Barishal",
    "Khulna",
    "Rajshahi",
    "Rangpur",
    "Mymensingh",
    "Sylhet",
    "Chattogram",
  ];
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
  List<String> genderGp = [
    "Male",
    "Female",
    "Others",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColros.maincolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height /5,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: AppColros.maincolor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(75),
                        bottomRight: Radius.circular(75)),
                  ),
                ),
                Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Center(
                                  child: Container(
                                      width: 130,
                                      height: 130,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(70),
                                         border: Border.all(
                                        width: 5, color: AppColros.white),
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 2,
                                        blurRadius: 10,
                                        color: Colors.black.withOpacity(0.1),
                                      ),
                                    ],
                                      ),
                                      child: Stack(
                                        fit: StackFit.loose,
                                        clipBehavior: Clip.none,
                                        children: [
                                          const Image(
                                            image: AssetImage(AppImages.man),
                                          ),
                                          Positioned(
                                            bottom: 5,
                                            right: 0,
                                            child: Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: Colors.amber,
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                                                  //shape: BoxShape.circle
                                              ),
                                              child: const Icon(
                                                Icons.edit,
                                                color: AppColros.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),),),

                            ],
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  ///=================Name Field ===================
                  const CustomText(
                      text: "Name",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      icon: Icon(
                        Icons.person,
                        color: AppColros.maincolor,
                      ),
                      suffixIcon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey),
                      //label: Text("Your Password"),
                      hintText: "Your Name",
                    ),
                  ),
                  const SizedBox(height: 20),

                  ///=================Phone Number Field ===================
                  const CustomText(
                      text: "Phone Number",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      icon: Icon(
                        Icons.phone,
                        color: AppColros.maincolor,
                      ),
                      suffixIcon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey),
                      //label: Text("Your Password"),
                      hintText: "Your Phone Number",
                    ),
                  ),
                  const SizedBox(height: 20),

                  ///=================Date Of Birth Field===================
                  const CustomText(
                      text: "Date of Birth",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  const SizedBox(height: 20),
                  TextField(
                    onTap: () async {
                      final DateTime? date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1971),
                          lastDate:
                          DateTime(2024).add(const Duration(days: 365)));
                      final formatteddate =
                      DateFormat("dd-MM-yyyy").format(date!);
                      setState(() {
                        _dateController.text = formatteddate.toString();
                      });
                    },
                    readOnly: true,
                    controller: _dateController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      icon: const Icon(
                        Icons.calendar_month,
                        color: AppColros.maincolor,
                      ),
                      //suffixIcon: Icon(Icons.edit, color: Colors.grey,),
                      suffixIcon: IconButton(
                          onPressed: () async {},
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.grey,
                          )),
                      filled: true,
                      hintStyle: const TextStyle(color: Colors.grey),
                      //label: Text("Your Password"),
                      hintText: "Date of Birth",
                    ),
                  ),
                  const SizedBox(height: 20),

                  ///=================Gender Field ===================
                  const SizedBox(height: 20),
                  const CustomText(
                      text: "Gender",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    */
/*decoration: BoxDecoration(
                      border: Border.all(color: AppColros.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),*//*

                    child: DropdownButton<String>(
                      hint: const Text("Select Gender"),
                      borderRadius: BorderRadius.circular(20),
                      elevation: 1,
                      dropdownColor: Colors.white,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: AppColros.grey,
                        size: 40,
                      ),
                      iconSize: 36,
                      underline: const SizedBox(),
                      isExpanded: true, // This makes the dropdown full-width
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                      value: chooseGender,
                      onChanged: (String? newValue) {
                        setState(() {
                          chooseGender = newValue;
                        });
                      },
                      items: genderGp.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                    ),
                  ),

                  ///=================Blood Group Field ===================
                  const SizedBox(height: 20),
                  const CustomText(
                      text: "Blood Group",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    */
/*decoration: BoxDecoration(
                      border: Border.all(color: AppColros.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),*//*

                    child: DropdownButton<String>(
                      hint: const Text("Choose Your Blood"),
                      borderRadius: BorderRadius.circular(20),
                      elevation: 1,
                      dropdownColor: Colors.white,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: AppColros.grey,
                        size: 40,
                      ),
                      iconSize: 36,
                      underline: const SizedBox(),
                      isExpanded: true, // This makes the dropdown full-width
                      style: const TextStyle(
                        color: Colors.black,
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

                  ///=================Division Field ===================
                  const SizedBox(height: 20),
                  const CustomText(
                      text: "Division ",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    */
/*decoration: BoxDecoration(
                      border: Border.all(color: AppColros.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),*//*

                    child: DropdownButton<String>(
                      hint: const Text("Select Division"),
                      borderRadius: BorderRadius.circular(20),
                      elevation: 1,
                      dropdownColor: Colors.white,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: AppColros.grey,
                        size: 40,
                      ),
                      iconSize: 36,
                      underline: const SizedBox(),
                      isExpanded: true, // This makes the dropdown full-width
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                      value: chooseDivision,
                      onChanged: (String? newValue) {
                        setState(() {
                          chooseDivision = newValue;
                        });
                      },
                      items: divisionGp.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                    ),
                  ),

                  ///=================Districts Field ===================
                  const SizedBox(height: 20),
                  const CustomText(
                      text: "Districts ",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    */
/*decoration: BoxDecoration(
                      border: Border.all(color: AppColros.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),*//*

                    child: DropdownButton<String>(
                      hint: const Text("Selecte Districts"),
                      borderRadius: BorderRadius.circular(20),
                      elevation: 1,
                      dropdownColor: Colors.white,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: AppColros.grey,
                        size: 40,
                      ),
                      iconSize: 36,
                      underline: const SizedBox(),
                      isExpanded: true, // This makes the dropdown full-width
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                      value: chooseDistricts,
                      onChanged: (String? newValue) {
                        setState(() {
                          chooseDistricts = newValue;
                        });
                      },
                      items: districtsGp.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 20),

                  ///=================Full Address Field ===================
                  const CustomText(
                      text: "Full Address",
                      color: AppColros.greylabel,
                      fontsize: 18,
                      fontweight: FontWeight.w800),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      icon: Icon(
                        Icons.location_pin,
                        color: AppColros.maincolor,
                      ),
                      suffixIcon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey),
                      //label: Text("Your Password"),
                      hintText: "Your Address",
                    ),
                  ),
                  const SizedBox(height: 50),
                  Center(
                    child: Container(
                      height: 50,
                      width: 280,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: AppColros.maincolor,
                      ),
                      child: const Text(
                        "Donner Account Create",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(currentIndex: 1),
    );
  }
}
*/
