import 'package:flutter/material.dart';
import 'package:mayomart_online_store/Data_Classes/cart_model.dart';
import 'package:mayomart_online_store/Data_Classes/prodact_model.dart';
import 'package:mayomart_online_store/My_APP/app_theme.dart';
import 'package:mayomart_online_store/Screens/Cart/cart_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayomart_online_store/Shared_Components/error_dialog.dart';
import 'package:provider/provider.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProductDetailsScreen extends StatefulWidget {
  static const String routeName = "Product Details Screen";

  ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    var provider = Provider.of<MyProvider>(context);
    var product = ModalRoute.of(context)!.settings!.arguments as ProductModel;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(product.productName),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Image.asset(
              product.productImage,
              height: 0.4.sh,
            )),
            Text(product.productDescription),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      if (count == 0) {
                        showDialog(
                          context: context,
                          builder: (context) => ErrorDialog(
                              errorMessage:
                                  "Sorry but you can't buy this item with this quantity or below it"),
                        );
                      } else {
                        count--;
                      }
                      setState(() {});
                    },
                    icon: Icon(Icons.minimize,
                        color: provider.appMode == ThemeMode.light
                            ? AppTheme.secondaryColor
                            : AppTheme.thirdColor)), // Minus Button
                Text(
                  "$count ${AppLocalizations.of(context)!.kg}",
                  style: TextStyle(
                      color: provider.appMode == ThemeMode.light
                          ? AppTheme.secondaryColor
                          : AppTheme.thirdColor),
                ),
                // IconButton(
                //     onPressed: () {
                //       if (product.quantityInStock <= count) {
                //         showDialog(
                //           context: context,
                //           builder: (context) => ErrorDialog(
                //               errorMessage:
                //                   AppLocalizations.of(context)!.lastItemsError),
                //         );
                //       } else {
                //         if (count == 10) {
                //           showDialog(
                //             context: context,
                //             builder: (context) => ErrorDialog(
                //                 errorMessage: AppLocalizations.of(context)!
                //                     .maxQuantityError),
                //           );
                //         } else {
                //           count++;
                //         }
                //       }
                //       setState(() {});
                //     },
                //     icon: Icon(Icons.add,
                //         color: provider.appMode == ThemeMode.light
                //             ? AppTheme.secondaryColor
                //             : AppTheme.thirdColor)), // Add Button
              ],
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 0.01.sh),
              child: ElevatedButton(
                onPressed: () {
                  if (count == 0) {
                    showDialog(
                      context: context,
                      builder: (context) => ErrorDialog(
                          errorMessage:
                              AppLocalizations.of(context)!.zeroQuantityError),
                    );
                  } else {
                    var cartModel =
                        CartModel(product: product, quantity: count);
                    CartScreen.cartProducts.insert(0, cartModel);
                    count = 0;
                    Navigator.pushNamed(context, CartScreen.routeName,
                        arguments: cartModel);
                  }
                  // product.quantityInStock -= count;
                },
                child: Text(
                  AppLocalizations.of(context)!.addToCart,
                  style: GoogleFonts.nunito(
                    fontSize: 12.sp,
                    color: AppTheme.thirdColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
