import 'package:flutter/material.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontsize;
  final FontWeight? fontweight;
  final String? fontfamily;
  const CustomText({super.key, required this.text, required this.color, required this.fontsize, required this.fontweight, this.fontfamily});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize:fontsize??12, fontWeight: fontweight,color: color,fontFamily: fontfamily),);
  }
}
