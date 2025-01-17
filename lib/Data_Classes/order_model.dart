import 'package:mayomart_online_store/Data_Classes/cart_model.dart';

class OrderModel {
  String id;
  List<CartModel> orderProducts;
  String userID;
  int totalPrice;

  OrderModel(
      {this.id = "",
      required this.orderProducts,
      required this.userID,
      required this.totalPrice});

  OrderModel.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        userID = json["user"],
        totalPrice = json["totalPrice"],
        orderProducts = (json["orderProducts"] as List)
            .map((item) => CartModel.fromJson(item))
            .toList();

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "user": userID,
      "orderProducts": orderProducts.map((cart) => cart.toJson()).toList(),
      "totalPrice": totalPrice,
    };
  }
}
