// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/utils/app_images/app_images.dart';
import 'package:need_of_blood/utils/app_strings/app_strings.dart';
import 'package:need_of_blood/view/components/custom_button/custom_button.dart';
import 'package:need_of_blood/view/components/custom_from_card/custom_from_card.dart';
import 'package:need_of_blood/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            fit: StackFit.loose,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.7,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  //color: AppColros.maincolor,
                  gradient: LinearGradient(
                      colors: [AppColros.l1, AppColros.l2],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60)),
                ),
              ),
              Positioned(
                  child: Padding(
                padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
                child: Column(
                  children: [
                    CustomRoyelAppbar(titleName: AppStrings.myProfile),
                    Stack(
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
                                          color:
                                              Colors.black.withOpacity(0.1),
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
                                          bottom: 0,
                                          right: 0,
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                width: 4,
                                                color: Colors.white,
                                              ),
                                              color: Colors.transparent,
                                            ),
                                            child: Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: AppColros.white,
                                                  shape: BoxShape.circle),
                                              child: const Icon(
                                                Icons.edit,
                                                color: AppColros.maincolor,
                                                size: 18,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ))),
                            const SizedBox(height: 10),

                            ///============ Name =========
                            CustomText(
                              text: "Mehedi Bin Ab. Salam",
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: AppColros.white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///=================Blood Group + Donate Count ===================
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: MediaQuery.sizeOf(context).width / 2.3,
                            //height: 150,
                            decoration: BoxDecoration(
                              color: AppColros.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              children: [
                                CustomText(
                                  text: "A+",
                                  color: AppColros.redlight,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                ),
                                CustomText(
                                  text: "Blood Group",
                                  color: AppColros.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: MediaQuery.sizeOf(context).width / 2.3,
                            //height: 150,
                            decoration: BoxDecoration(
                              color: AppColros.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              children: [
                                CustomText(
                                  text: "10 ",
                                  color: AppColros.skgreen,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                ),
                                CustomText(
                                  text: "Donate Count",
                                  color: AppColros.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Center(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 0, right: 0, top: 10),
                          child: Container(
                            height: 45,
                            //width: 200,
                            decoration: BoxDecoration(
                              color: AppColros.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: "Last Donate : ",
                                  color: AppColros.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  right: 10,
                                ),
                                CustomText(
                                    text: "3 Month Ago",
                                    color: AppColros.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomFormCard(
                        title: "Your Name",
                        hintText: "Mehedi Hassan",
                        prefixIcon: Icon(
                          Icons.person,
                          color: AppColros.maincolor,
                        ),
                        controller: TextEditingController(),
                      ),
                      //============= Your Phone Number ===========
                      CustomFormCard(
                        title: "Your Phone Number",
                        hintText: "01518602063",
                        prefixIcon: Icon(
                          Icons.call,
                          color: AppColros.maincolor,
                        ),
                        controller: TextEditingController(),
                      ),
                      //============= Your Date of Birth ===========
                      CustomFormCard(
                        title: "Your Date of Birth",
                        hintText: "13/03/1997",
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
                
                        prefixIcon: Icon(
                          Icons.calendar_month,
                          color: AppColros.maincolor,
                        ),
                        controller: _dateController,
                      ),
                      //============= Your Phone Number ===========
                      CustomFormCard(
                        title: "Your Phone Number",
                        hintText: "01518602063",
                        prefixIcon: Icon(
                          Icons.call,
                          color: AppColros.maincolor,
                        ),
                        controller: TextEditingController(),
                      ),
                
                
                      ///=================Gender Field ===================
                      const CustomText(
                          text: "Your Gender",
                          color: AppColros.greylabel,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        bottom: 8,
                      ),
                      Container(
                        height: 55,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: AppColros.white,
                         // border: Border.all(color: AppColros.white, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            hint: const Text("Select Gender"),
                            borderRadius: BorderRadius.circular(20),
                            elevation: 1,
                            dropdownColor: Colors.white,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: AppColros.redColor,
                              size: 30,
                            ),

                            iconSize: 36,
                            underline: const SizedBox(),
                            isExpanded: true, // This makes the dropdown full-width
                            style: const TextStyle(
                              color: Colors.grey,
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
                      ),
                
                      ///=================Blood Group Field ===================
                      const SizedBox(height: 15),
                      const CustomText(
                          text: "Your Blood Group",
                          color: AppColros.greylabel,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        bottom: 8,
                      ),
                      Container(
                        height: 55,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: AppColros.white,
                         // border: Border.all(color: AppColros.grey, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            hint: const Text("Choose Your Blood"),
                            borderRadius: BorderRadius.circular(20),
                            elevation: 1,
                            dropdownColor: Colors.white,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: AppColros.redColor,
                              size: 30,
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
                      ),
                
                      ///=================Division Field ===================
                      const SizedBox(height: 15),
                      const CustomText(
                          text: "Division ",
                          color: AppColros.greylabel,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        bottom: 8,
                      ),
                      Container(
                        height: 55,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: AppColros.white,
                         // border: Border.all(color: AppColros.grey, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            hint: const Text("Select Division"),
                            borderRadius: BorderRadius.circular(20),
                            elevation: 1,
                            dropdownColor: Colors.white,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: AppColros.redColor,
                              size: 30,
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
                      ),
                
                      ///=================Districts Field ===================
                      const SizedBox(height: 15),
                      const CustomText(
                          text: "Districts ",
                          color: AppColros.greylabel,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        bottom: 8,
                      ),
                      Container(
                        height: 55,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: AppColros.white,
                         // border: Border.all(color: AppColros.grey, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            hint: const Text("Selecte Districts"),
                            borderRadius: BorderRadius.circular(20),
                            elevation: 1,
                            dropdownColor: Colors.white,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: AppColros.redColor,
                              size: 30,
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
                      ),
                      const SizedBox(height: 10),
                
                      ///=================Full Address Field ===================
                      CustomFormCard( title: "Full Address",hintText: "Mirpur 2, Love Road", prefixIcon :Icon(Icons.location_on, color: AppColros.maincolor,), readOnly: true,maxLine: 2, controller: TextEditingController(),),
                      SizedBox(height: 30.h,),
                      CustomButton(onTap: (){},title: "Update",fillColor: AppColros.maincolor2,),
                      SizedBox(height: 30.h,),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      // bottomNavigationBar: const NavBar(currentIndex: 3),
    );
  }
}
