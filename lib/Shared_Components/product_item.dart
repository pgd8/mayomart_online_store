import 'package:flutter/material.dart';
import 'package:mayomart_online_store/Data_Classes/cart_model.dart';
import 'package:mayomart_online_store/Data_Classes/prodact_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:mayomart_online_store/Screens/Cart/cart_screen.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  ProductModel product;

  ProductItem({required this.product});

  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              product.productImage,
              width: 0.2.sw,
            ),
            Text(
              product.productName,
              style: TextStyle(
                  color: provider.appMode == ThemeMode.light
                      ? AppTheme.secondaryColor
                      : AppTheme.thirdColor,
                  fontSize: 14.sp,
                  fontFamily: "childos"),
            ),
            Text(product.productDescription,
                style: TextStyle(
                    color: provider.appMode == ThemeMode.light
                        ? AppTheme.secondaryColor
                        : AppTheme.thirdColor,
                    fontSize: 9.sp,
                    fontFamily: "childos")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${product.price} EGP",
                    style: TextStyle(
                        color: provider.appMode == ThemeMode.light
                            ? AppTheme.secondaryColor
                            : AppTheme.thirdColor,
                        fontSize: 8.sp)),
                IconButton(
                    onPressed: () {
                      var cart =
                          CartModel(product: product, quantity: quantity + 1);
                      productIsInCart(cart) == true
                          ? 12
                          : CartScreen.cartProducts.add(cart);
                    },
                    icon: Icon(
                      Icons.add,
                      color: AppTheme.mainColor,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  bool productIsInCart(CartModel cart) {
    bool isFound = false;
    for (int i = 0; i < CartScreen.cartProducts.length; i++) {
      if (CartScreen.cartProducts[i].product == cart.product) {
        CartScreen.cartProducts[i].quantity++;
        isFound = !isFound;
        return isFound;
      }
    }
    return isFound;
  }
}
