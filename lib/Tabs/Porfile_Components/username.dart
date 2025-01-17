import 'package:flutter/material.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../My_APP/app_theme.dart';

class Username extends StatelessWidget {
  const Username({super.key});

  static String userName = "";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      child: Text(
        userName,
        style: TextStyle(
          fontSize: 14.sp,
          color: provider.appMode == ThemeMode.light
              ? AppTheme.secondaryColor
              : AppTheme.thirdColor,
          fontWeight: FontWeight.bold,
          fontFamily: "childos",
          textBaseline: TextBaseline.alphabetic,
        ),
      ),
    ); // user name
  }
}
