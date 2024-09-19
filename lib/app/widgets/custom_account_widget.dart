import 'package:flutter/material.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
class CustomAccountWidget extends StatelessWidget {

  final IconData? icon;
  final void Function()? onTap ;
  final String text;
  const CustomAccountWidget({super.key, required this.icon, this.onTap, required this.text,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: AppColros.white,
        elevation: 2.0,
        shadowColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(color: AppColros.maincolor,icon as IconData?,),
              SizedBox(width: 10),
              Text(text,style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColros.black),),
            ],
          ),
        ),
      ),
    );
  }
}
