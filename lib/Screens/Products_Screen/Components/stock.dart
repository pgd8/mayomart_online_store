import 'package:flutter/material.dart';
import 'package:mayomart_online_store/Data_Classes/prodact_model.dart';
import 'package:mayomart_online_store/Screens/Products_Screen/Components/product.dart';

class Stock {
  List<Product> vegetables = [
    Product(
      productModel: ProductModel(
          productName: "productName",
          productDescription: "productDescription",
          productImage: "assets/images/fruits&vegetables.png",
          quantityInStock: 10),
    ),
    Product(
      productModel: ProductModel(
          productName: "productName",
          productDescription: "productDescription",
          productImage: "assets/images/fruits&vegetables.png",
          quantityInStock: 10),
    ),
    Product(
      productModel: ProductModel(
          productName: "productName",
          productDescription: "productDescription",
          productImage: "assets/images/fruits&vegetables.png",
          quantityInStock: 10),
    ),
  ];
  List<Product> meats = [
    Product(
      productModel: ProductModel(
          productName: "productName",
          productDescription: "productDescription",
          quantityInStock: 5,
          productImage: "assets/images/fruits&vegetables.png"),
    ),
  ];
  List<Product> chickens = [
    Product(
      productModel: ProductModel(
          productName: "productName",
          productDescription: "productDescription",
          quantityInStock: 10,
          productImage: "assets/images/fruits&vegetables.png"),
    ),
    Product(
      productModel: ProductModel(
          productName: "productName",
          productDescription: "productDescription",
          quantityInStock: 10,
          productImage: "assets/images/fruits&vegetables.png"),
    ),
    Product(
      productModel: ProductModel(
          productName: "productName",
          productDescription: "productDescription",
          quantityInStock: 10,
          productImage: "assets/images/fruits&vegetables.png"),
    ),
  ];
  List<Product> fastFood = [
    Product(
      productModel: ProductModel(
          productName: "productName",
          productDescription: "productDescription",
          quantityInStock: 10,
          productImage: "assets/images/fruits&vegetables.png"),
    ),
    Product(
      productModel: ProductModel(
          productName: "productName",
          productDescription: "productDescription",
          quantityInStock: 10,
          productImage: "assets/images/fruits&vegetables.png"),
    ),
    Product(
      productModel: ProductModel(
          productName: "productName",
          productDescription: "productDescription",
          quantityInStock: 10,
          productImage: "assets/images/fruits&vegetables.png"),
    ),
  ];
  List<Product> fruits = [
    Product(
      productModel: ProductModel(
          productName: "productName",
          productDescription: "productDescription",
          quantityInStock: 10,
          productImage: "assets/images/fruits&vegetables.png"),
    ),
    Product(
      productModel: ProductModel(
          productName: "productName",
          productDescription: "productDescription",
          quantityInStock: 10,
          productImage: "assets/images/fruits&vegetables.png"),
    ),
    Product(
      productModel: ProductModel(
          productName: "productName",
          productDescription: "productDescription",
          quantityInStock: 10,
          productImage: "assets/images/fruits&vegetables.png"),
    ),
  ];

  List<Widget> productsList(String title) {
    if (title == "Vegetables") {
      return vegetables;
    } else if (title == "Fruits") {
      return fruits;
    } else if (title == "Meats") {
      return meats;
    } else if (title == "Chicken") {
      return chickens;
    } else if (title == "Fast Food") {
      return fastFood;
    } else {
      return [Text("something went wrong!")];
    }
  }
}
