import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static const Color mainColor = Color(0xffff0000);
  static Color secondaryColor = Colors.black;
  static Color thirdColor = Colors.white;
  static const Color categoryColor = Color.fromRGBO(255, 0, 0, 0.1);
  static ThemeData lightTheme = ThemeData(
      // cardTheme: CardTheme(
      //   color: secondaryColor,
      //   elevation: 0.01.sh,
      //   shadowColor: Colors.grey.shade600,
      // ),
      appBarTheme: AppBarTheme(
          backgroundColor: mainColor,
          iconTheme: IconThemeData(color: thirdColor),
          toolbarHeight: 0.0.sh,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: "childos",
            color: Colors.white,
            fontWeight: FontWeight.bold,
          )),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: mainColor,
        elevation: 0.01.sh,
        shadowColor: Colors.grey,
      )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: secondaryColor,
        elevation: 0.01.sh,
        enableFeedback: false,
        showSelectedLabels: true,
        selectedItemColor: mainColor,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          fontFamily: "childos",
          color: mainColor,
          fontSize: 12.sp,
        ),
        showUnselectedLabels: false,
      ),
      listTileTheme: ListTileThemeData(
        titleTextStyle: TextStyle(
            fontFamily: "childos",
            fontSize: 11.sp, fontWeight: FontWeight.bold, color: Colors.black),
        subtitleTextStyle: TextStyle(
            fontFamily: "childos",
            fontSize: 10.sp,
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade800),
        tileColor: categoryColor,
        iconColor: secondaryColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
      ));
  static ThemeData darkTheme = ThemeData();
}
