import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/Tabs/Home_Tab_Components/category.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> categories = [
      Category(
        categoryImage: "assets/images/fruits&vegetables.png",
        label: "Vegetables",
      ),
      Category(
        categoryImage: "assets/images/meat.png",
        label: "Meats",
      ),
      Category(
        categoryImage: "assets/images/chicken.png",
        label: "Chicken",
      ),
      Category(
        categoryImage: "assets/images/fastFood.png",
        label: "Fast Food",
      ),
    ];
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0.r),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: 0.02.sw),
          itemBuilder: (context, index) => categories[index],
        ),
      ),
    );
  }
}
