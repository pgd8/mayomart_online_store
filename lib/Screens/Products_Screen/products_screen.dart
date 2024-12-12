import 'package:flutter/material.dart';
import 'package:mayomart_online_store/Screens/Products_Screen/Components/stock.dart';

class ProductsScreen extends StatelessWidget {
  static const String routeName = "Products Screen";
  Stock product = Stock();

  ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var title = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: ListView.builder(
            physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
            itemCount: product.productsList(title).length,
            itemBuilder: (context, index) =>
                product.productsList(title).elementAt(index),
          )),
    );
  }
}
