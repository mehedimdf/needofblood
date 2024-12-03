// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/utils/app_icons/app_icons.dart';
import 'package:need_of_blood/utils/app_images/app_images.dart';
import 'package:need_of_blood/utils/app_strings/app_strings.dart';
import 'package:need_of_blood/view/components/custom_from_card/custom_from_card.dart';
import 'package:need_of_blood/view/components/custom_image/custom_image.dart';
import 'package:need_of_blood/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:need_of_blood/view/components/custom_text/custom_text.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  // Controllers for form fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _bloodGroupController = TextEditingController();
  final TextEditingController _divisionController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.7,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColros.l1, AppColros.l2],
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Column(
                children: [
                  CustomRoyelAppbar(titleName: AppStrings.userProfile),
                  Center(
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        border: Border.all(width: 5, color: AppColros.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ],
                      ),
                      child: const Image(
                        image: AssetImage(AppImages.man),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomText(
                    text: "Mehedi Bin Ab. Salam",
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: AppColros.white,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildInfoCard("A+", "Blood Group", AppColros.redlight),
                          _buildInfoCard("10", "Donate Count", AppColros.skgreen),
                        ],
                      ),
                      _buildLastDonateInfo(),
                      const SizedBox(height: 20),
                      // Profile fields
                      _buildFormField("Your Name", "Mehedi Hassan", Icons.person, _nameController),
                      _buildFormField("Your Phone Number", "01518602063", Icons.call, _phoneController),
                      _buildFormField("Your Date of Birth", "13/03/1997", Icons.calendar_month, _dobController),
                      _buildFormField("Your Gender", "Male", Icons.generating_tokens_outlined, _genderController),
                      _buildFormField("Your Blood Group", "A+", Icons.bloodtype, _bloodGroupController),
                      _buildFormField("Your Division", "Dhaka", Icons.location_city, _divisionController),
                      _buildFormField("Your District", "Mirpur", Icons.my_location_outlined, _districtController),
                      _buildFormField("Full Address", "Mirpur 2, Love Road", Icons.location_on, _addressController, maxLines: 2),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _buildBottomNavigationBar(context),
        ],
      ),
    );
  }

  Widget _buildInfoCard(String value, String label, Color valueColor) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.sizeOf(context).width / 2.3,
      decoration: BoxDecoration(
        color: AppColros.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          CustomText(
            text: value,
            color: valueColor,
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
          CustomText(
            text: label,
            color: AppColros.grey,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }

  Widget _buildLastDonateInfo() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            color: AppColros.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "Last Donate: ",
                color: AppColros.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                right: 10,
              ),
              CustomText(
                text: "3 Month Ago",
                color: AppColros.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFormField(String title, String hintText, IconData prefixIcon, TextEditingController controller, {int maxLines = 1}) {
    return CustomFormCard(
      title: title,
      hintText: hintText,
      prefixIcon: Icon(prefixIcon, color: AppColros.maincolor),
      readOnly: true,
      controller: controller,
      maxLine: maxLines,
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildBottomNavItem(AppIcons.addUser, "Request", AppColros.maincolor2),
          _buildBottomNavItem(AppIcons.call_icon, "Call", AppColros.skgreen),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem(String icon, String label, Color color) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 60,
      width: MediaQuery.sizeOf(context).width / 2.3,
      decoration: BoxDecoration(
        color: AppColros.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          CustomImage(
            imageSrc: icon,
            height: 40,
            width: 40,
          ),
          TextButton(
            onPressed: () {},
            child: CustomText(
              text: label,
              color: color,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
