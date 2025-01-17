import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:provider/provider.dart';

class Email extends StatelessWidget {
  const Email({super.key});

  static String email = "";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.only(bottom: 0.02.sh),
      child: Text(
        email,
        style: TextStyle(
          fontSize: 9.sp,
          color: provider.appMode == ThemeMode.light
              ? AppTheme.secondaryColor
              : AppTheme.thirdColor,
          fontWeight: FontWeight.bold,
          textBaseline: TextBaseline.alphabetic,
        ),
      ),
    ); // email
  }
}
