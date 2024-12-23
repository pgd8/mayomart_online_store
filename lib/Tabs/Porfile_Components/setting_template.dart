import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:provider/provider.dart';

class SettingTemplate extends StatelessWidget {
  Icon icon;
  String title;

  SettingTemplate({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0.03.sh),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 0.04.sw),
                  child: icon,
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: provider.appMode == ThemeMode.light
                              ? AppTheme.secondaryColor
                              : AppTheme.thirdColor,
                          fontFamily: "childos",
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            Container(
              child: Icon(Icons.arrow_forward_ios_rounded,
                  color: provider.appMode == ThemeMode.light
                      ? AppTheme.secondaryColor
                      : AppTheme.thirdColor),
              margin: EdgeInsets.symmetric(horizontal: 0.04.sw),
            ),
          ],
        ),
      ),
    );
  }

  action() {}
}
