import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/Data_Classes/prodact_model.dart';
import 'package:mayomart_online_store/Screens/Product_Details_Screen/product_details_screen.dart';

class Product extends StatelessWidget {
  ProductModel productModel;

  Product({required this.productModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ProductDetailsScreen.routeName,
            arguments: productModel);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0.01.sh, horizontal: 0.02.sw),
        child: ListTile(
          title: Text(productModel.productName),
          subtitle: Text(productModel.productDescription),
          leading: Image.asset(productModel.productImage),
          trailing: Text("${productModel.price} EGP"),
          dense: true,
        ),
      ),
    );
  }
}
