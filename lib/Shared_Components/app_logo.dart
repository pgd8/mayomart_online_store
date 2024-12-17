import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.14.sw,
      child: Image.asset(
        "assets/images/home_logo.png",
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
