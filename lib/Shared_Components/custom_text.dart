import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  String text;
  double size;
  Color color;

  CustomText(
      {super.key, required this.text, required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: "childos",
          fontSize: size.sp,
          color: color,
          fontWeight: FontWeight.bold),
    );
  }
}
