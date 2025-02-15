import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/Tabs/Home_Tab_Components/category.dart';


class BottomSheetCategories extends StatelessWidget {
  const BottomSheetCategories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> categories = [
    ];
    return Padding(
      padding: EdgeInsets.all(8.0.r),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
        ),
        itemBuilder: (context, index) => categories[index],
      ),
    );
  }
}
