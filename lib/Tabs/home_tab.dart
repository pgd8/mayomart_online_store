import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:mayomart_online_store/Shared_Components/app_logo.dart';
import 'package:mayomart_online_store/Shared_Components/custom_text.dart';
import 'package:mayomart_online_store/Tabs/Home_Tab_Components/home_categories.dart';
import 'package:mayomart_online_store/Tabs/Home_Tab_Components/welcome_message_and_cart_button.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeTab extends StatelessWidget {
  HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    var provider = Provider.of<MyProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: AppTheme.mainColor,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: 0.02.sh, horizontal: 0.02.sw),
                child: Row(
                  children: [
                    const AppLogo(),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 0.01.sw),
                        child: SearchBar(
                          hintText: AppLocalizations.of(context)!.searchHere,
                          trailing: Iterable.generate(
                            1,
                            (index) => Icon(
                              Icons.search_outlined,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              WelcomeMessageAndCartButton(),
            ],
          ),
        ),
        Container(
            margin:
                EdgeInsets.symmetric(vertical: 0.01.sh, horizontal: 0.02.sw),
            child: CustomText(
                text: AppLocalizations.of(context)!.categoriesTab,
                size: 14.sp,
                color: provider.appMode == ThemeMode.light
                    ? AppTheme.secondaryColor
                    : AppTheme.thirdColor)),
        // ImageSlideshow(children: []),
        HomeCategories(),
        Container(
          margin: EdgeInsets.symmetric(vertical: 0.01.sh, horizontal: 0.02.sw),
          child: CustomText(
              text: AppLocalizations.of(context)!.offers,
              size: 14.sp,
              color: provider.appMode == ThemeMode.light
                  ? AppTheme.secondaryColor
                  : AppTheme.thirdColor),
        ),
        // ImageSlideshow(children: []),
        Container(
          margin: EdgeInsets.symmetric(vertical: 0.01.sh, horizontal: 0.02.sw),
          child: CustomText(
              text: AppLocalizations.of(context)!.recommended,
              size: 14.sp,
              color: provider.appMode == ThemeMode.light
                  ? AppTheme.secondaryColor
                  : AppTheme.thirdColor),
        ),
      ],
    );
  }
}
