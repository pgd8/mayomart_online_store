import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/Tabs/Home_Tab_Components/categories.dart';

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
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0.r),
          child: Text(DateTime.now().hour < 12
              ? "Hey, good morning"
              : "Hey, good Evening"),
        ), // Greeting message
        // ImageSlideshow(children: []),
        const Categories(),
        Container(),
      ],
    );
  }
}
