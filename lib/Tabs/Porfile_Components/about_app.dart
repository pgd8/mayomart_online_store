import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/setting_template.dart';
import 'package:provider/provider.dart';
import '../../My_APP/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return InkWell(
      onTap: (){
        showDialog(
          barrierLabel: AppLocalizations.of(context)!.aboutApp,
            context: context,
            builder: (context) => Center(
              child: Card(
                color: AppTheme.thirdColor,
                child: Container(
                  height: 0.6.sh,
                  margin: EdgeInsets.symmetric(vertical:0.02.sh,horizontal: 0.02.sw),
                  child: SingleChildScrollView(
                    physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(AppLocalizations.of(context)!.detailsAboutApp,textAlign: TextAlign.center,),
                        Text(
                          AppLocalizations.of(context)!.developer,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: "childos",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ,);
      },
      child: SettingTemplate(
          icon: Icon(Icons.phone_iphone_rounded,
              color: provider.appMode == ThemeMode.light
                  ? AppTheme.mainColor
                  : AppTheme.thirdColor),
          title: AppLocalizations.of(context)!.aboutApp),
    );
  }
}
