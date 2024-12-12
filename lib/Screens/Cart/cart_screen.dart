import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayomart_online_store/Data_Classes/cart_model.dart';
import 'package:mayomart_online_store/Screens/Cart/components/product_in_cart.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:slide_to_act/slide_to_act.dart';
class CartScreen extends StatefulWidget {
  static const String routeName = "Cart Screen";

  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();

  static List<CartModel> cartProducts = [];
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: CartScreen.cartProducts.length,
                itemBuilder: (context, index) => Slidable(
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
                  ),
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.symmetric(horizontal: 0.03.sw,
                      vertical: 0.01.sh),
              child: SlideAction(
                outerColor: Colors.black,
                innerColor: Colors.red,
                elevation: 0.01.sh,
                sliderButtonIconSize: 14.sp,
                sliderButtonIconPadding: 15.r,
                sliderButtonIcon: const Icon(Icons.arrow_forward_ios_rounded),
                submittedIcon: const Icon(Icons.done,color: Colors.white,),
                animationDuration: const Duration(milliseconds: 200),
                onSubmit: () {
                  CartScreen.cartProducts.clear();
                },
                text: "Swipe toPlace Order",
                textStyle: TextStyle(
                  fontFamily: "childos",
                  fontSize: 14.sp,
                  color: Colors.grey
                ),
                enabled: true,
                textColor: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
