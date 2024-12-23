import 'package:flutter/material.dart';
import 'package:mayomart_online_store/My_APP/my_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: MyApp()));
}
