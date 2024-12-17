import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/Data_Classes/category_model.dart';
import 'package:mayomart_online_store/Tabs/Home_Tab_Components/category.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> categories = [
      Category(
          categoryModel: CategoryModel(
              categoryName: "Vegetables",
              imagePath: "assets/images/fruits&vegetables.png")),
      Category(
          categoryModel: CategoryModel(
              categoryName: "Meats", imagePath: "assets/images/meat.png")),
      Category(
          categoryModel: CategoryModel(
              categoryName: "chicken", imagePath: "assets/images/chicken.png")),
      Category(
          categoryModel: CategoryModel(
              categoryName: "Vegetables",
              imagePath: "assets/images/fruits&vegetables.png")),
    ];
    return Padding(
      padding: EdgeInsets.all(5.r),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        child: Row(
          children: categories,
        ),
      ),
    );
  }
}
