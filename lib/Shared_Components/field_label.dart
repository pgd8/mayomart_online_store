import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FieldLabel extends StatelessWidget {
  String labelText;

  FieldLabel({required this.labelText});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));

    return Text(labelText,
        style: TextStyle(color: Colors.grey, fontSize: 10.sp));
  }
}
