import 'package:flutter/material.dart';
import 'package:mayomart_online_store/Screens/Cart/cart_screen.dart';
import 'package:mayomart_online_store/Tabs/Search_Tab/search_tab.dart';
import 'package:mayomart_online_store/Tabs/profile_tab.dart';
import 'package:mayomart_online_store/Tabs/home_tab.dart';
import '../../My_APP/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int ind = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: ind,
          onTap: (int index) {
            ind = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined), label: "Category"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_3_outlined), label: "profile"),
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
      return "Search";
    } else if (ind == 2) {
      return "Category";
    } else {
      return "Profile";
    }
  }
}
