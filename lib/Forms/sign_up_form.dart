import 'package:flutter/material.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/Screens/Home_Screen/home_screen.dart';
import 'package:mayomart_online_store/Screens/Login_Screen/login_screen.dart';
import 'package:mayomart_online_store/Shared_Components/field_label.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class SignUpForm extends StatefulWidget {
  SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController emailCon = TextEditingController();
  TextEditingController phoneNumCon = TextEditingController();
  TextEditingController passwordCon = TextEditingController();
  TextEditingController confirmPassCon = TextEditingController();

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
              cursorColor: Colors.black,
              controller: emailCon,
              validator: (value) {
                if (value!.isEmpty || value == "") {
                  return "Email is required";
                }
              },
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(fontSize: 10.sp, color: Colors.black),
              decoration: InputDecoration(
                focusColor: Colors.black,
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
              controller: phoneNumCon,
              cursorColor: Colors.black,
              validator: (value) {
                if (value!.isEmpty || value == "") {
                  return "phone number is required";
                }
              },
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 10.sp, color: Colors.black),
              decoration: InputDecoration(
                isDense: true,
                errorStyle: TextStyle(fontSize: 9.sp),
                label: FieldLabel(labelText: "Phone Number"),
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
              cursorColor: Colors.black,
              validator: (value) {
                if (value!.isEmpty || value == "") {
                  return "Password is required";
                }
              },
              obscureText: isHidden,
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
                  borderSide:const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide:const BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(25.r),
                ),
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.01.sh),
            child: TextFormField(
              controller: confirmPassCon,
              cursorColor: Colors.black,
              validator: (value) {
                if (value!.isEmpty ||
                    value == "" ||
                    confirmPassCon.text != passwordCon.text) {
                  return "Password isn't matched";
                }
              },
              obscureText: isHidden,
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
                label: FieldLabel(labelText: "Confirm Password"),
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
              child: Text(
                "Sign Up",
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              child: Text(
                "Already Have Acccount?",
                style: TextStyle(fontSize: 9.sp, color: Colors.blue.shade700),
              )),
        ],
      ),
    );
  }
}
