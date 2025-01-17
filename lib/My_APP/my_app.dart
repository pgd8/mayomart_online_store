import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:mayomart_online_store/Screens/Cart/cart_screen.dart';
import 'package:mayomart_online_store/Screens/Home_Screen/home_screen.dart';
import 'package:mayomart_online_store/Screens/Login_Screen/login_screen.dart';
import 'package:mayomart_online_store/Screens/Order_Screen/order_screen.dart';
import 'package:mayomart_online_store/Screens/Product_Details_Screen/product_details_screen.dart';
import 'package:mayomart_online_store/Screens/Products_Screen/products_screen.dart';
import 'package:mayomart_online_store/Screens/Sign_Up_Screen/sign_up_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return ScreenUtilInit(
      ensureScreenSize: true,
      minTextAdapt: true,
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "15 Mayo Mart",
        locale: Locale(provider.languageCode),
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates:AppLocalizations.localizationsDelegates,
        themeMode: provider.appMode,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        initialRoute: LoginScreen.routeName,
        routes: {
          LoginScreen.routeName: (context) => const LoginScreen(),
          SignUpScreen.routeName: (context) => const SignUpScreen(),
          HomeScreen.routeName: (context) =>  HomeScreen(),
          ProductsScreen.routeName: (context) => ProductsScreen(),
          ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
          CartScreen.routeName: (context) => CartScreen(),
          OrderScreen.routeName: (context) => const OrderScreen(),
        },
      ),
    );
  }
}
