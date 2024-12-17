import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/Data_Classes/category_model.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/Shared_Components/app_logo.dart';
import 'package:mayomart_online_store/Shared_Components/custom_text.dart';
import 'package:mayomart_online_store/Tabs/Home_Tab_Components/home_categories.dart';
import 'package:mayomart_online_store/Tabs/Home_Tab_Components/category.dart';
import 'package:mayomart_online_store/Tabs/Home_Tab_Components/welcome_message_and_cart_button.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
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
                          hintText: "Search here...",
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
          margin: EdgeInsets.symmetric(vertical: 0.01.sh, horizontal: 0.02.sw),
          child: CustomText(
              text: "Categories", size: 14.sp, color: AppTheme.secondaryColor),
        ),
        // ImageSlideshow(children: []),
        HomeCategories(),
        CustomText(text: "Offers", size: 14.sp, color: AppTheme.secondaryColor),
        // ImageSlideshow(children: []),
        CustomText(
            text: "Recommended", size: 14.sp, color: AppTheme.secondaryColor),
      ],
    );
  }
}
