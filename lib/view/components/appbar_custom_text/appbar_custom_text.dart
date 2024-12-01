/*
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/app_colors/app_colors.dart';

class AppbarCustomText extends StatelessWidget {
  const AppbarCustomText(
      {super.key,
      this.maxLines,
      this.textAlign = TextAlign.center,
      this.left = 0,
      this.right = 0,
      this.top = 0,
      this.bottom = 0,
      this.fontSize = 20,
      this.fontWeight = FontWeight.w500,
      this.color = Colors.white,
      required this.text,
      this.overflow = TextOverflow.ellipsis,
      this.decoration
      // this.decoration = TextDecoration.none,
      });

  final double left;
  final double right;
  final double top;
  final double bottom;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow overflow;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
      child: Text(
        textAlign: textAlign,
        text,
        maxLines: maxLines,
        overflow: overflow,
        style: GoogleFonts.poppins(
          fontSize: fontSize.w,
          fontWeight: fontWeight,
          color: color,
          decoration: decoration,
          decorationColor: Colors.black,
          decorationThickness: 2,
        ),
      ),
    );
  }
}
*/
