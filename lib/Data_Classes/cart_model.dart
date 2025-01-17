import 'package:mayomart_online_store/Data_Classes/prodact_model.dart';

class CartModel {
  ProductModel product;
  int quantity;

  CartModel({required this.product, required this.quantity});

  CartModel.fromJson(Map<String, dynamic> json)
      : product = ProductModel.fromJson(json["product"]),
        // Deserialize ProductModel
        quantity = json["quantity"];

  Map<String, dynamic> toJson() {
    return {
      "product": product.toJson(), // Serialize ProductModel
      "quantity": quantity,
    };
  }
}
