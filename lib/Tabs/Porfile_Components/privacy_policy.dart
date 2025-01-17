import 'package:flutter/material.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:mayomart_online_store/Tabs/Porfile_Components/setting_template.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return InkWell(
      onTap: () {
        showDialog(
          barrierLabel: AppLocalizations.of(context)!.aboutApp,
          context: context,
          builder: (context) => Center(
            child: Card(
              child: Container(
                height: 0.6.sh,
                margin: EdgeInsets.symmetric(vertical: 0.02.sh, horizontal: 2),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.informationCollection,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      AppLocalizations.of(context)!.useOfInformation,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      AppLocalizations.of(context)!.dataSharing,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      AppLocalizations.of(context)!.dataSecurity,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      AppLocalizations.of(context)!.userRights,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      AppLocalizations.of(context)!.cookies,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      AppLocalizations.of(context)!.policyUpdates,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      AppLocalizations.of(context)!.contactInformation,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: SettingTemplate(
          icon: Icon(Icons.privacy_tip_outlined,
              color: provider.appMode == ThemeMode.light
                  ? AppTheme.mainColor
                  : AppTheme.thirdColor),
          title: AppLocalizations.of(context)!.privacyPolicy),
    );
  }
}
