
import 'dart:convert';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str.toString()));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  int status;
  String message;
  Products products;

  ProductModel({
    required this.status,
    required this.message,
    required this.products,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        status: json["status"],
        message: json["message"],
        products: Products.fromJson(json["products"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "products": products.toJson(),
      };
}

class Products {
  int currentPage;
  List<Datum> data;

  Products({
    required this.currentPage,
    required this.data,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  int id;
  int storeId;

  String storeItemId;
  String name;

  String? coverImage;

  double price;

  double totalPrice;

  Datum({
    required this.id,
    required this.storeId,
    required this.storeItemId,
    required this.name,
    this.coverImage,
    required this.price,
    required this.totalPrice,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        storeId: json["store_id"],
        storeItemId: json["store_item_id"],
        name: json["name"],
        coverImage: json["cover_image"],
        price: json["price"]?.toDouble(),
        totalPrice: json["total_price"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "store_id": storeId,
        "store_item_id": storeItemId,
        "name": name,
        "price": price,
      };
}
