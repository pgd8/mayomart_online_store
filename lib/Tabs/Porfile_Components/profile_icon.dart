import 'package:flutter/material.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:provider/provider.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: provider.appMode == ThemeMode.light
                    ? AppTheme.secondaryColor
                    : AppTheme.thirdColor,
                width: 5.sp)),
        child: Badge(
          label: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: AppTheme.thirdColor,
              )),
          child: Icon(
            Icons.person,
            color: provider.appMode == ThemeMode.light
                ? AppTheme.secondaryColor
                : AppTheme.thirdColor,
            size: 120.sp,
          ),
        )); // profile icon
  }
}
