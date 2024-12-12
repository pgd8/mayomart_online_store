import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingTemplate extends StatelessWidget {
  Icon icon;
  String title;
  SettingTemplate({super.key, required this.icon,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      fontFamily: "childos",
                      fontWeight: FontWeight.bold
                    ),
                  )
              )
            ],
          ),
          Container(
            child: Icon(Icons.arrow_forward_ios_rounded),
            margin: EdgeInsets.symmetric(horizontal: 0.04.sw),
          ),
        ],
      ),
    );
  }

  action(){

  }
}
