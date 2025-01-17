import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/Screens/Sign_Up_Screen/sign_up_screen.dart';
import 'package:mayomart_online_store/Shared_Components/field_label.dart';
import 'package:provider/provider.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import '../Screens/Home_Screen/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    var provider = Provider.of<MyProvider>(context);

    return Form(
      key: formKey,
      child: Column(
        children: [
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.02.sh),
            child: TextFormField(
              controller: emailCon,
              cursorColor: provider.appMode == ThemeMode.light
                  ? AppTheme.secondaryColor
                  : AppTheme.thirdColor,
              decoration: InputDecoration(
                label:
                    FieldLabel(labelText: AppLocalizations.of(context)!.email),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty || value == "") {
                  return AppLocalizations.of(context)!.emailIsRequired;
                }
              },
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
              cursorColor: provider.appMode == ThemeMode.light
                  ? AppTheme.secondaryColor
                  : AppTheme.thirdColor,
              controller: passwordCon,
              obscureText: isHidden,
              decoration: InputDecoration(
                label: FieldLabel(
                    labelText: AppLocalizations.of(context)!.password),
              ),
              validator: (value) {
                if (value!.isEmpty || value == "") {
                  return AppLocalizations.of(context)!.passwordIsRequired;
                }
                return null;
              },
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
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: AppTheme.mainColor),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                }
              },
              child: Text(AppLocalizations.of(context)!.login,
                  style: TextStyle(
                    fontFamily: "childos",
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  )),
            ),
          ),
          Container(
            child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: Text(
                  AppLocalizations.of(context)!.doNotHaveAccount,
                  style: TextStyle(
                      fontFamily: "childos",
                      fontSize: 9.sp,
                      color: Colors.blue.shade700),
                )),
          ),
        ],
      ),
    );
  }
}
