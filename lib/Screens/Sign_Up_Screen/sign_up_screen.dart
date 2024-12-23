import 'package:flutter/material.dart';
import 'package:mayomart_online_store/Forms/sign_up_form.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const String routeName = "SignUp Screen";

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/images/logo.png",
                width: 0.7.sw,
              ),
            ),
            SignUpForm(),
          ],
        ),
      ),
    );
  }
}
