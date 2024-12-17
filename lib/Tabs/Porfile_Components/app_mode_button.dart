import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';

class ChangeAppModeButton extends StatelessWidget {
  ChangeAppModeButton({super.key});

  @override
  Widget build(BuildContext context) {
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
                  child: Icon(
                    Icons.light_mode_outlined,
                    color: AppTheme.mainColor,
                  ),
                ),
                Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Change App Mode",
                          style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: "childos",
                              fontWeight: FontWeight.bold),
                        )),
                    Text(
                      "Ligt & Dark",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontFamily: "childos",
                          fontSize: 12.sp),
                    )
                  ],
                )
              ],
            ),
            Container(
              child: Icon(Icons.arrow_forward_ios_rounded),
              margin: EdgeInsets.symmetric(horizontal: 0.04.sw),
            ),
          ],
        ),
      ),
    );
  }

  action() {}
}
