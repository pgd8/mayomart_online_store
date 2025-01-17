class ProductModel {
  String id;
  String productName;
  String productDescription;
  String productImage;
  String productCategory;
  String quantityInStock;
  String minQuantity;
  String maxQuantity;
  String price;

  ProductModel(
      {this.id = "",
      required this.productName,
      required this.productDescription,
      required this.productImage,
      required this.productCategory,
      required this.quantityInStock,
      required this.maxQuantity,
      required this.minQuantity,
      required this.price});

  ProductModel.fromJson(Map<String, dynamic> json)
      : this(
          id: json["id"],
          productName: json["productName"],
          productDescription: json["productDescription"],
          productCategory: json["productCategory"],
          productImage: json["productImageLink"],
          quantityInStock: json["productStock"],
          minQuantity: json["minQuantity"],
          maxQuantity: json["maxQuantity"],
          price: json["productPrice"],
        );

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "productName": productName,
      "productDescription": productDescription,
      "productCategory": productCategory,
      "productImageLink": productImage,
      "productStock": quantityInStock,
      "minQuantity": minQuantity,
      "maxQuantity": maxQuantity,
      "productPrice": price,
    };
  }
}
