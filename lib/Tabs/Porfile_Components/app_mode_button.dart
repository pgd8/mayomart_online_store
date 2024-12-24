import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChangeAppModeButton extends StatelessWidget {
  ChangeAppModeButton({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return InkWell(
      onTap: () {
        provider.changeAppMode();
      },
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
                    color: provider.appMode == ThemeMode.light
                        ? AppTheme.mainColor
                        : AppTheme.thirdColor,
                  ),
                ),
                Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          AppLocalizations.of(context)!.changeAppMode,
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: provider.appMode == ThemeMode.light
                                  ? AppTheme.secondaryColor
                                  : AppTheme.thirdColor,
                              fontFamily: "childos",
                              fontWeight: FontWeight.bold),
                        )),
                    Text(
                      AppLocalizations.of(context)!.modes,
                      style: TextStyle(
                          color: provider.appMode == ThemeMode.light
                              ? Colors.grey.shade600
                              : Colors.grey.shade400,
                          fontFamily: "childos",
                          fontSize: 12.sp),
                    )
                  ],
                )
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
