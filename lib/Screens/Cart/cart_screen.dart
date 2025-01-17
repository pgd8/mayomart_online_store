import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/Data_Classes/cart_model.dart';
import 'package:mayomart_online_store/Data_Classes/order_model.dart';
import 'package:mayomart_online_store/Data_Classes/user_model.dart';
import 'package:mayomart_online_store/Firebase/firebase_functions.dart';
import 'package:mayomart_online_store/Screens/Cart/components/product_in_cart.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:provider/provider.dart';
import 'package:mayomart_online_store/My_APP/my_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../My_APP/app_theme.dart';

class CartScreen extends StatefulWidget {
  static const String routeName = "Cart Screen";

  CartScreen({super.key});

  static User user =
  User(userName: "",
      email: "",
      phoneNumber: "",
      address: "",
      password: "");

  @override
  State<CartScreen> createState() => CartScreenState(user: user);

  static List<CartModel> cartProducts = [];
}

class CartScreenState extends State<CartScreen> {
  User user;
  int productStock = 0;
  int totalPrice = 0;

  CartScreenState({required this.user});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    var provider = Provider.of<MyProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.cart),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: CartScreen.cartProducts.length,
                itemBuilder: (context, index) =>
                    Slidable(
                      endActionPane:
                      ActionPane(motion: const BehindMotion(), children: [
                        IconButton(
                            onPressed: () {
                              CartScreen.cartProducts.removeAt(index);
                              setState(() {});
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ))
                      ]),
                      child: ProductInCart(
                        productModel: CartScreen.cartProducts[index].product,
                        quantity: CartScreen.cartProducts[index].quantity,
                      ),
                    ),
              ),
            ),
            slideButton(provider)
          ],
        ),
      ),
    );
  }

  Widget slideButton(provider) {
    if (CartScreen.cartProducts.isNotEmpty) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 0.03.sw, vertical: 0.01.sh),
        child: SlideAction(
          outerColor: provider.appMode == ThemeMode.light
              ? AppTheme.secondaryColor
              : AppTheme.thirdColor,
          innerColor: Colors.red,
          elevation: 0.01.sh,
          sliderButtonIconSize: 14.sp,
          sliderButtonIconPadding: 15.r,
          sliderButtonIcon: Icon(Icons.arrow_forward_ios_rounded,
              color: provider.appMode == ThemeMode.light
                  ? AppTheme.secondaryColor
                  : AppTheme.thirdColor),
          submittedIcon: Icon(
            Icons.done,
            color: provider.appMode == ThemeMode.light
                ? AppTheme.thirdColor
                : AppTheme.secondaryColor,
          ),
          animationDuration: const Duration(milliseconds: 200),
          onSubmit: () {
            for (int i = 0; i < CartScreen.cartProducts.length; i++) {
              try {
                int price = int.parse(CartScreen.cartProducts[i].product.price);
                totalPrice += (price * CartScreen.cartProducts[i].quantity);

                int productInStock = int.parse(
                    CartScreen.cartProducts[i].product.quantityInStock);
                if (productInStock >= CartScreen.cartProducts[i].quantity) {
                  CartScreen.cartProducts[i].product.quantityInStock =
                      (productInStock - CartScreen.cartProducts[i].quantity)
                          .toString();
                  updateProductQuantity(CartScreen.cartProducts[i].product);
                } else {
                  print("Something went wrong");
                }
              } catch (e) {
                print('Error parsing price or quantity: $e');
              }
            }
            addOrderToFireStore(OrderModel(
                orderProducts: CartScreen.cartProducts,
                userID: user.id,
                totalPrice: totalPrice));
            CartScreen.cartProducts.clear();
            totalPrice = 0;
            setState(() {});
          },
          text: AppLocalizations.of(context)!.swipeToPlaceOrder,
          textStyle: TextStyle(
              fontFamily: "childos", fontSize: 14.sp, color: Colors.grey),
          enabled: true,
          textColor: Colors.grey,
        ),
      );
    } else {
      return Container();
    }
  }
}
