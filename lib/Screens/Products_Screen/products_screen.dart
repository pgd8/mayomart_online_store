import 'package:flutter/material.dart';
import 'package:mayomart_online_store/Data_Classes/prodact_model.dart';
import 'package:mayomart_online_store/Firebase/firebase_functions.dart';
import 'package:mayomart_online_store/Shared_Components/product_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsScreen extends StatelessWidget {
  static const String routeName = "Products Screen";

  ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var title = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder(
        future: getProduct(),
        builder: (context, snapshot) {
          List<ProductModel> products =
              snapshot.data?.docs.map((product) => product.data()).toList() ??
                  [];
          if (ConnectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Card(
              child: Text("Something went wrong!"),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: GridView.builder(
                itemCount: products.length,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0.02.sh,
                    crossAxisSpacing: 0.01.sw),
                itemBuilder: (context, index) => ProductItem(
                  product: products[index],
                ),
              ),
            );
          }
        },
      ),
    ));
  }
}
