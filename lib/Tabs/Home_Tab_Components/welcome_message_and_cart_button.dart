import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/Shared_Components/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WelcomeMessageAndCartButton extends StatelessWidget {
  const WelcomeMessageAndCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0.02.sh, horizontal: 0.03.sw),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: 0.02.sh, horizontal: 0.02.sw),
                decoration: BoxDecoration(
                    color: AppTheme.thirdColor, shape: BoxShape.circle),
                padding: EdgeInsets.all(5.r),
                child: Icon(Icons.person),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: AppLocalizations.of(context)!.welcome,
                      size: 12,
                      color: AppTheme.thirdColor),
                  CustomText(
                      text: "Abdelrahman", size: 8, color: AppTheme.thirdColor),
                ],
              )
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(5.r),
                decoration: BoxDecoration(
                  color: AppTheme.thirdColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: AppTheme.secondaryColor,
                )),
          ),
        ],
      ),
    );
  }
}
