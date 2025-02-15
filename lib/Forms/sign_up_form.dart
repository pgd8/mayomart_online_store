import 'package:flutter/material.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/Screens/Home_Screen/home_screen.dart';
import 'package:mayomart_online_store/Screens/Login_Screen/login_screen.dart';
import 'package:mayomart_online_store/Shared_Components/field_label.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController usernameCon = TextEditingController();
  TextEditingController emailCon = TextEditingController();
  TextEditingController phoneNumCon = TextEditingController();
  TextEditingController passwordCon = TextEditingController();
  TextEditingController confirmPassCon = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    var provider = Provider.of<MyProvider>(context);

    return Form(
      key: formKey,
      child: Column(
        children: [
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.02.sh),
            child: TextFormField(
              cursorColor: provider.appMode == ThemeMode.light
                  ? AppTheme.secondaryColor
                  : AppTheme.thirdColor,
              controller: usernameCon,
              decoration: InputDecoration(
                  label: FieldLabel(
                      labelText: AppLocalizations.of(context)!.userName)),
              validator: (value) {
                if (value!.isEmpty || value == "") {
                  return AppLocalizations.of(context)!.userNameIsRequired;
                }
              },
              keyboardType: TextInputType.name,
              style: TextStyle(
                  fontSize: 10.sp,
                  color: provider.appMode == ThemeMode.light
                      ? AppTheme.secondaryColor
                      : AppTheme.thirdColor),
            ),
          ),
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.01.sh),
            child: TextFormField(
              decoration: InputDecoration(
                  label: FieldLabel(
                      labelText: AppLocalizations.of(context)!.email)),
              controller: emailCon,
              cursorColor: provider.appMode == ThemeMode.light
                  ? AppTheme.secondaryColor
                  : AppTheme.thirdColor,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppLocalizations.of(context)!.emailIsRequired;
                }
              },
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                  fontSize: 10.sp,
                  color: provider.appMode == ThemeMode.light
                      ? AppTheme.secondaryColor
                      : AppTheme.thirdColor),
            ),
          ),
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.01.sh),
            child: TextFormField(
              decoration: InputDecoration(
                  label: FieldLabel(
                      labelText: AppLocalizations.of(context)!.phoneNumber)),
              controller: phoneNumCon,
              cursorColor: provider.appMode == ThemeMode.light
                  ? AppTheme.secondaryColor
                  : AppTheme.thirdColor,
              validator: (value) {
                if (value!.isEmpty || value == "") {
                  return AppLocalizations.of(context)!.phoneNumberIsRequired;
                }
              },
              keyboardType: TextInputType.number,
              style: TextStyle(
                  fontSize: 10.sp,
                  color: provider.appMode == ThemeMode.light
                      ? AppTheme.secondaryColor
                      : AppTheme.thirdColor),
            ),
          ),
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.01.sh),
            child: TextFormField(
              controller: passwordCon,
              cursorColor: provider.appMode == ThemeMode.light
                  ? AppTheme.secondaryColor
                  : AppTheme.thirdColor,
              validator: (value) {
                if (value!.isEmpty || value == "") {
                  return AppLocalizations.of(context)!.passwordIsRequired;
                }
              },
              obscureText: isHidden,
              style: TextStyle(
                  fontSize: 10.sp,
                  color: provider.appMode == ThemeMode.light
                      ? AppTheme.secondaryColor
                      : AppTheme.thirdColor),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      isHidden = !isHidden;
                      setState(() {});
                    },
                    icon: Icon(isHidden
                        ? Icons.visibility_off_rounded
                        : Icons.visibility_rounded)),
                label: FieldLabel(
                    labelText: AppLocalizations.of(context)!.password),
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.01.sh),
            child: TextFormField(
              controller: confirmPassCon,
              cursorColor: provider.appMode == ThemeMode.light
                  ? AppTheme.secondaryColor
                  : AppTheme.thirdColor,
              validator: (value) {
                if (value!.isEmpty ||
                    value == "" ||
                    confirmPassCon.text != passwordCon.text) {
                  return AppLocalizations.of(context)!.passwordDoNotMach;
                }
              },
              obscureText: isHidden,
              style: TextStyle(
                  fontSize: 10.sp,
                  color: provider.appMode == ThemeMode.light
                      ? AppTheme.secondaryColor
                      : AppTheme.thirdColor),
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
                label: FieldLabel(
                    labelText: AppLocalizations.of(context)!.confirmPassword),
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.01.sh),
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: AppTheme.mainColor),
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
                AppLocalizations.of(context)!.signup,
                style: TextStyle(
                  fontFamily: "childos",
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
                AppLocalizations.of(context)!.alreadyHaveAccount,
                style: TextStyle(fontSize: 9.sp, color: Colors.blue.shade700),
              )),
        ],
      ),
    );
  }
}
