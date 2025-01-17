import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/Data_Classes/prodact_model.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:provider/provider.dart';

class ProductInCart extends StatelessWidget {
  ProductModel productModel;
  int quantity;

  ProductInCart({required this.productModel, required this.quantity});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 0.01.sh, horizontal: 0.02.sw),
      child: ListTile(
        title: Text(productModel.productName),
        subtitle: Text(productModel.productDescription),
        trailing: Text(
          "$quantity",
          style: TextStyle(
              color: provider.appMode == ThemeMode.light
                  ? AppTheme.secondaryColor
                  : AppTheme.thirdColor),
        ),
        leading: Image.network(productModel.productImage),
        dense: true,
      ),
    );
  }
}
