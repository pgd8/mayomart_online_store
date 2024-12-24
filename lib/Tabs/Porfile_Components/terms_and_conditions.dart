import 'package:flutter/material.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/setting_template.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return SettingTemplate(
        icon: Icon(Icons.file_copy_outlined,
            color: provider.appMode == ThemeMode.light
                ? AppTheme.mainColor
                : AppTheme.thirdColor),
        title: AppLocalizations.of(context)!.termsAndConditions);
  }
}
