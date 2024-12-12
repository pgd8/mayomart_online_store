import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/Data_Classes/cart_model.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = "Cart Screen";

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    var cartModel = ModalRoute.of(context)!.settings.arguments as CartModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(cartModel.product.productName),
        ),
      ),
    );
  }

  static List<CartModel> cartProducts = [];
}
