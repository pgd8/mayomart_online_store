import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/Screens/Sign_Up_Screen/sign_up_screen.dart';
import 'package:mayomart_online_store/Shared_Components/field_label.dart';

import '../Screens/Home_Screen/home_screen.dart';


class LoginForm extends StatefulWidget {
  LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emailCon = TextEditingController();

  TextEditingController passwordCon = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));

    return Form(
      key: formKey,
      child: Column(
        children: [
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.02.sh),
            child: TextFormField(
              controller: emailCon,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty || value == "") {
                  return "Email is required";
                }
              },
              style: TextStyle(fontSize: 10.sp, color: Colors.black),
              decoration: InputDecoration(
                isDense: true,
                errorStyle: TextStyle(fontSize: 9.sp),
                label: FieldLabel(labelText: "Email"),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(25.r),
                ),
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.01.sh),
            child: TextFormField(
              controller: passwordCon,
              obscureText: isHidden,
              validator: (value) {
                if (value!.isEmpty || value == "") {
                  return "Password is required";
                }
              },
              style: TextStyle(fontSize: 10.sp, color: Colors.black),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      isHidden = !isHidden;
                      setState(() {});
                    },
                    icon: Icon(isHidden
                        ? Icons.visibility_off_rounded
                        : Icons.visibility_rounded)),
                isDense: true,
                errorStyle: TextStyle(fontSize: 9.sp),
                label: FieldLabel(labelText: "Password"),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(25.r),
                ),
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.01.sh),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.mainColor
              ),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                }
              },
              child: Text("Login",
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  )),
            ),
          ),
          Container(
            child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignUpScreen()));
                },
                child: Text(
                  "Don't Have Account?",
                  style:
                      TextStyle(fontSize: 9.sp, color: Colors.blue.shade700),
                )),
          ),
        ],
      ),
    );
  }
}
