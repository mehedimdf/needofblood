/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:need_of_blood/app/homePage/user_profile_page.dart';
import 'package:need_of_blood/app/widgets/custom_donate_request_widget.dart';
import 'package:need_of_blood/app/widgets/custom_list_widget.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/app_images/appImages.dart';
import 'package:need_of_blood/common/custom_text/custom_text.dart';

class DonateRequestPage extends StatefulWidget {
  const DonateRequestPage({super.key});

  @override
  State<DonateRequestPage> createState() => _DonateRequestPageState();
}

class _DonateRequestPageState extends State<DonateRequestPage> {
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
      appBar: AppBar(
        foregroundColor: AppColros.white,
        scrolledUnderElevation: 0,
        centerTitle: true,
        //toolbarHeight: 80,
        backgroundColor: AppColros.maincolor,
        title:  const CustomText(
            text: "Request Donor",
            color: AppColros.white,
            fontsize: 30,
            fontweight: FontWeight.w700),
      ),
      body: Column(
        children: [
          Stack(
            fit: StackFit.loose,
            clipBehavior: Clip.none,
            alignment: Alignment.center,
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
              const Positioned(
                top: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                        text: "Blood Donors Around You",
                        color: AppColros.grey2,
                        fontsize: 16,
                        fontweight: FontWeight.w500),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30,top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                        text: "Blood Group",
                        color: AppColros.white,
                        fontsize: 18,
                        fontweight: FontWeight.w800),
                    const SizedBox(height: 10,),
                    Container(
                      padding:const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColros.white, width: .7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: DropdownButton<String>(
                        hint: const Text(
                          "Choose Blood Group",
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
                    const SizedBox(
                      height: 10,
                    ),
                   */
/* const CustomText(
                        text: "Location",
                        color: AppColros.white,
                        fontsize: 18,
                        fontweight: FontWeight.w800),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.search_rounded,
                          color: AppColros.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppColros.white, width: .7),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelStyle: const TextStyle(color: Colors.grey),
                        fillColor: AppColros.maincolor,
                        filled: true,
                        hintStyle: const TextStyle(color: AppColros.whitegrey),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColros.black,
                            width: .7,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        //label: Text("Enter your pet’s name."),
                        hintText: "Enter your Location",
                      ),
                    ),
                    //
                    const SizedBox(
                      height: 20,
                    ),*//*

                    Center(
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          color: AppColros.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0.0, 0.0),
                                spreadRadius: 2.0,
                                blurRadius: 10.0,
                                color: AppColros.maincolor)
                          ],
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search_rounded,
                              color: AppColros.maincolor,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            CustomText(
                                text: "Search",
                                color: AppColros.maincolor,
                                fontsize: 16,
                                fontweight: FontWeight.w500)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          isSelected[index] = !isSelected[index];
                          Get.to(()=> UserProfilePage());
                        },
                        child: const CustomDonateRequestWidget(),
                      );
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );

  }
}
*/
