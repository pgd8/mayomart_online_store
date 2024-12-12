import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/Screens/Products_Screen/products_screen.dart';


class Category extends StatelessWidget {
  String categoryImage;
  String label;

  Category({super.key, required this.categoryImage, required this.label});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ProductsScreen.routeName,
            arguments: label);
      },
      child: Expanded(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                    vertical: 0.002.sh, horizontal: 0.00.sw),
                decoration: BoxDecoration(
                    color: AppTheme.categoryColor,
                    borderRadius: BorderRadius.circular(20.r),
                    shape: BoxShape.rectangle),
                child: Image.asset(categoryImage,
                    fit: BoxFit.contain, semanticLabel: label),
              ),
            ),
            Text(
              label,
              style: GoogleFonts.nunito(),
            )
          ],
        ),
      ),
    );
  }
}
