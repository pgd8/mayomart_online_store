import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/about_app.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/app_mode_button.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/change_language_button.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/change_password_button.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/email.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/log_out_button.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/privacy_policy.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/profile_icon.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/share_app.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/terms_and_conditions.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/username.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            const ProfileIcon(),
            const Username(),
            const Email(),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 0.08.sh,
              color: AppTheme.mainColor,
              padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
              child: Text(
                AppLocalizations.of(context)!.generalSetting,
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
            ChangeAppModeButton(),
            const ChangePasswordButtonn(),
            const ChangeLanguageButton(),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 0.08.sh,
              color: AppTheme.mainColor,
              padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
              child: Text(
                AppLocalizations.of(context)!.information,
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
            const AboutApp(),
            const TermsAndConditions(),
            const PrivacyPolicy(),
            const ShareApp(),
            const LogOutButton(),
          ],
        ),
      ),
    );
  }
}
