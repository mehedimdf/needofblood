import 'package:flutter/material.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/common/custom_text/custom_text.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColros.maincolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: AppColros.maincolor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(75),
                      bottomRight: Radius.circular(75),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                            child: CustomText(
                              text: "Change Your\n Password.",
                              color: AppColros.black,
                              fontsize: 32,
                              fontweight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 30),
                          Center(
                            child: CustomText(
                              text: "Password must have 6-8 characters.",
                              color: AppColros.grey,
                              fontsize: 14,
                              fontweight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 30),
                          CustomText(
                            text: "Current Password",
                            color: AppColros.greylabel,
                            fontsize: 18,
                            fontweight: FontWeight.w800,
                          ),
                          SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              suffixIcon: Icon(Icons.edit, color: Colors.grey),
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "Current Password",
                            ),
                          ),
                          SizedBox(height: 20),
                          CustomText(
                            text: "New Password",
                            color: AppColros.greylabel,
                            fontsize: 18,
                            fontweight: FontWeight.w800,
                          ),
                          SizedBox(height: 10),
                          TextField(
                            obscureText: true, // Hide password text
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey),
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "New Password",
                            ),
                          ),
                          SizedBox(height: 20),
                          CustomText(
                            text: "Confirm New Password",
                            color: AppColros.greylabel,
                            fontsize: 18,
                            fontweight: FontWeight.w800,
                          ),
                          SizedBox(height: 10),
                          TextField(
                            obscureText: true, // Hide password text
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey),
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "Confirm New Password",
                            ),
                          ),
                          SizedBox(height: 50),
                          Center(
                            child: Container(
                              height: 50,
                              width: 280,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: AppColros.maincolor,
                              ),
                              child: Text(
                                "Reset Password",
                                style: TextStyle(fontSize: 18, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
