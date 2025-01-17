import 'package:flutter/material.dart';
import 'package:mayomart_online_store/Data_Classes/user_model.dart';
import 'package:mayomart_online_store/Screens/Cart/cart_screen.dart';
import 'package:mayomart_online_store/Tabs/search_tab.dart';
import 'package:mayomart_online_store/Tabs/profile_tab.dart';
import 'package:mayomart_online_store/Tabs/home_tab.dart';
import '../../My_APP/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  HomeScreen({super.key});

  static User user =
      User(userName: "", email: "", phoneNumber: "", address: "", password: "");

  @override
  State<HomeScreen> createState() => HomeScreenState(user: user);
}

class HomeScreenState extends State<HomeScreen> {
  int ind = 0;
  User user;

  HomeScreenState({required this.user});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: ind,
          onTap: (int index) {
            ind = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: AppLocalizations.of(context)!.homeTap),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: AppLocalizations.of(context)!.searchTab),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: AppLocalizations.of(context)!.categoriesTab),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_3_outlined),
                label: AppLocalizations.of(context)!.profileTab),
          ]),
      appBar: ind == 0
          ? AppBar(
              toolbarHeight: 0.0,
            )
          : AppBar(
              backgroundColor: AppTheme.mainColor,
              iconTheme: IconThemeData(color: AppTheme.thirdColor),
              toolbarHeight: 0.065.sh,
              title: Text(
                titleDetect(),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, CartScreen.routeName);
                    },
                    icon: const Icon(Icons.shopping_cart_outlined))
              ],
            ),
      body: tabs[ind],
    ));
  }

  List<Widget> tabs = [HomeTab(), SearchTab(), Container(), ProfileTab()];

  String titleDetect() {
    if (ind == 1) {
      return AppLocalizations.of(context)!.searchTab;
    } else if (ind == 2) {
      return AppLocalizations.of(context)!.categoriesTab;
    } else {
      return AppLocalizations.of(context)!.profileTab;
    }
  }
}
