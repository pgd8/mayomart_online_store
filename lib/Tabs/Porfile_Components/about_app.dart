import 'package:flutter/material.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/setting_template.dart';
import 'package:provider/provider.dart';
import '../../My_APP/app_theme.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return SettingTemplate(
        icon: Icon(Icons.phone_iphone_rounded,
            color: provider.appMode == ThemeMode.light
                ? AppTheme.mainColor
                : AppTheme.thirdColor),
        title: "About App");
  }
}
