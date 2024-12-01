/*
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_strings/app_strings.dart';
import '../custom_button/custom_button.dart';
import '../custom_text/custom_text.dart';
import '../custom_text_field/custom_text_field.dart';

class CustomQuickGoalPopup extends StatelessWidget {
  CustomQuickGoalPopup({
    super.key,
    required this.quickGoalController,
    required this.quickPointController,
    required this.cancelButton,
    required this.submitButton,
  });

  final TextEditingController quickGoalController;
  final TextEditingController quickPointController;
  final VoidCallback cancelButton;
  final VoidCallback submitButton;
//  final String? Function(String?)? quickGoalValidaror;
//  final String? Function(String?)? quickPointsValidaror;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ///======================== Add Daliy Goal ===========================
          const CustomText(
            textAlign: TextAlign.start,
            text: "AppStrings.addQuickGoal",
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColors.black,
          ),
          SizedBox(
            height: 10.h,
          ),

          ///======================== Line Border ===========================
          Container(
            height: 1.h,
            width: MediaQuery.of(context).size.width,
            color: AppColors.black,
          ),
          SizedBox(
            height: 10.h,
          ),

          ///======================== Add New Goal ===========================
          Row(
            children: [
              Expanded(
                flex: 3,
                child: CustomTextField(
                  fieldBorderRadius: 10,
                  fieldBorderColor: AppColors.black,
                  fillColor: AppColors.white,
                 // hintText: AppStrings.addQuickGoal,
                  textEditingController: quickGoalController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.fieldCantBeEmpty;
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                flex: 1,
                child: CustomTextField(
                  keyboardType: TextInputType.number,
                  fieldBorderRadius: 10,
                  fieldBorderColor: AppColors.black,
                  fillColor: AppColors.white,
                 // hintText: AppStrings.point,
                  textEditingController: quickPointController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Add';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ///======================== Cancel Button ===========================
              CustomButton(
                onTap: () {
                  Navigator.pop(context);
                  cancelButton();
                },
               // title: AppStrings.cancel,
                isBorder: true,
                height: 40.h,
                width: 80.w,
                fontSize: 14,
                fillColor: AppColors.white,
                borderRadius: 15,
                borderWidth: 1,
                textColor: AppColors.black,
              ),
              SizedBox(
                width: 10.w,
              ),

              ///======================== Submit Button ===========================
              CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    submitButton();
                  }
                },
               // title: AppStrings.submit,
                height: 40.h,
                width: 80.w,
                fontSize: 14,
                fillColor: AppColors.brinkPink,
                borderRadius: 15,
                borderWidth: 2,
                textColor: AppColors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
*/
