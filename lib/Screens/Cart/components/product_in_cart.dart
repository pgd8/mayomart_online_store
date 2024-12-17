import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/Data_Classes/prodact_model.dart';

class ProductInCart extends StatelessWidget {
  ProductModel productModel;

  ProductInCart({required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 0.01.sh, horizontal: 0.02.sw),
      child: ListTile(
        title: Text(productModel.productName),
        subtitle: Text(productModel.productDescription),
        leading: Image.asset(productModel.productImage),
        dense: true,
      ),
    );
  }
}
