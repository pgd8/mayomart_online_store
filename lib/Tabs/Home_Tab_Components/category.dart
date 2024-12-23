import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/Data_Classes/category_model.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/Screens/Products_Screen/products_screen.dart';

class Category extends StatelessWidget {
  CategoryModel categoryModel;

  Category({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ProductsScreen.routeName,
            arguments: categoryModel.categoryName);
      },
      child: Container(
        padding: EdgeInsets.all(4.r),
        margin: EdgeInsets.symmetric(horizontal: 0.02.sw),
        decoration: const BoxDecoration(
            color: AppTheme.categoryColor, shape: BoxShape.circle),
        child: Image.asset(categoryModel.imagePath,
            width: 0.3.sw, fit: BoxFit.contain),
      ),
    );
  }
}
