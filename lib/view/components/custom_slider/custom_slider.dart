/*
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_colors/app_colors.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider(
      {super.key,
      this.min,
      this.max,
      this.currentValue,
      this.height,
      this.currentWidth});

  final double? min;
  final double? max;
  final double? currentValue;
  final double? height;
  final double? currentWidth;

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double width = 0;

  @override
  Widget build(BuildContext context) {
    createMethod();
    return Stack(
      children: [
        Container(
          width: widget.currentWidth ?? MediaQuery.sizeOf(context).width / 3,
          height: widget.height ?? 7.w,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          height: widget.height ?? 7.w,
          width: width,
          decoration: BoxDecoration(
            color: widget.currentValue == null || widget.currentValue == 0
                ? AppColors.white
                : AppColors.red,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
          ),
        ),
      ],
    );
  }

  void createMethod() {
    if (widget.max != null &&
        widget.min != null &&
        widget.currentValue != null) {
      double minMax = widget.max! - widget.min!;

      double percent = minMax / widget.currentValue!;

      double mediaHight =
          widget.currentWidth ?? MediaQuery.sizeOf(context).width / 3;

      width = mediaHight / percent;

      setState(() {});
    }
  }
}
*/
