import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/setting_template.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.r),
      child: SingleChildScrollView(
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        child: Column(
          children: [
            Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 5.sp)),
                child: Icon(
                  Icons.person,
                  color: AppTheme.mainColor,
                  size: 120.sp,
                )), // profile icon
            Container(
              child: Text(
                "Abdelrahman Hamdi",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: "childos",
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ), // user name
            Container(
              margin: EdgeInsets.only(bottom: 0.02.sh),
              child: Text(
                "abdelrahmanhamdi08@gmail.com",
                style: TextStyle(
                  fontSize: 9.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: "childos",
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ), // email
            Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 0.08.sh,
              color: AppTheme.mainColor,
              padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
              child: Text(
                "General Settings",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "childos",
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
            SettingTemplate(
                icon: const Icon(
                  Icons.light_mode_outlined,
                  color: AppTheme.mainColor,
                ),
                title: "change mode"),
            SettingTemplate(
                icon: const Icon(Icons.lock_outline, color: AppTheme.mainColor),
                title: "Change Password"),
            SettingTemplate(
                icon:
                    const Icon(Icons.translate, color: AppTheme.mainColor),
                title: "Change Password"),
            Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 0.08.sh,
              color: AppTheme.mainColor,
              padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
              child: Text(
                "Information",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "childos",
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
            SettingTemplate(
                icon: const Icon(Icons.phone_iphone_rounded,
                    color: AppTheme.mainColor),
                title: "About App"),
            SettingTemplate(
                icon: const Icon(Icons.file_copy_outlined,
                    color: AppTheme.mainColor),
                title: "Terms & Conditions"),
            SettingTemplate(
                icon: const Icon(Icons.privacy_tip_outlined,
                    color: AppTheme.mainColor),
                title: "Terms & Conditions"),
            SettingTemplate(
                icon: const Icon(Icons.share,
                    color: AppTheme.mainColor),
                title: "Share App"),
          ],
        ),
      ),
    );
  }
}
