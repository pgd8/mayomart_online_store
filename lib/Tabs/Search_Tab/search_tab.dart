import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));

    return SingleChildScrollView(
      physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin:
                EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.01.sh),
            child: SearchBar(
              hintText: "Seach here...",
              side: WidgetStateBorderSide.resolveWith(
                (states) => BorderSide(color: AppTheme.secondaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
