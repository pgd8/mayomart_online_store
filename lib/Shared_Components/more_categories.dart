import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/Shared_Components/bottom_sheet_categories.dart';


class MoreCategories extends StatelessWidget {
  const MoreCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0.005.sh, horizontal: 0.005.sw),
      child: ElevatedButton(
          onPressed: () {
            showBottomSheet(
              context: context,
              enableDrag: true,
              constraints: BoxConstraints.expand(height: 0.4.sh),
              elevation: 0.02.sh,
              showDragHandle: true,
              builder: (context) => const BottomSheetCategories(),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.categoryColor,
            elevation: 0.0,
            iconColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.r)),
          ),
          child: const Icon(Icons.category_outlined)),
    ); // more Button -> bottom sheet
        ;
  }
}
