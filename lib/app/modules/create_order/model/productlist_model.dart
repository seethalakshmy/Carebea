// To parse this JSON data, do
//
//     final productListResponse = productListResponseFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';


@JsonSerializable()
class ProductListResponse {
  ProductListResponse({
    this.jsonrpc,
    this.id,
    this.productListResult,
  });

  String? jsonrpc;
  dynamic id;
  @JsonKey(name: 'result')
  ProductListResult? productListResult;

  factory ProductListResponse.fromJson(Map<String, dynamic> json) => _$ProductListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductListResponseToJson(this);
}
@JsonSerializable()
class ProductListResult {
  ProductListResult({
    this.status,
    this.productCount,
    this.category,
    this.childrenCategories,
    this.message,
    this.productList,
  });

  bool? status;
  int? productCount;
  String? category;
  List<dynamic>? childrenCategories;
  String? message;
  List<ProductList>? productList;

  factory ProductListResult.fromJson(Map<String, dynamic> json) => _$ProductListResultFromJson(json);

  Map<String, dynamic> toJson() => _$ProductListResultToJson(this);
}
@JsonSerializable()
class ProductList {
  ProductList({
    this.imageUrl,
    this.qtyAvailable,
    this.mlLang,
    this.available,
    this.id,
    this.productTmplId,
    this.name,
    this.description,
    this.price,
    this.retailPrice,
    this.departmentPrice,
    this.wholesalePrice,
    this.supermarketPrice,
    this.enLang,
    this.unit,
    this.productId,
    this.productImages,
  });

  List<dynamic> imageUrl;
  int qtyAvailable;
  String mlLang;
  String available;
  int id;
  int productTmplId;
  String name;
  String description;
  int price;
  int retailPrice;
  int departmentPrice;
  int wholesalePrice;
  int supermarketPrice;
  String enLang;
  String unit;
  int productId;
  List<dynamic> productImages;

  factory ProductList.fromJson(Map<String, dynamic> json) => ProductList(
    imageUrl: List<dynamic>.from(json["imageUrl"].map((x) => x)),
    qtyAvailable: json["qtyAvailable"],
    mlLang: json["mlLang"],
    available: json["available"],
    id: json["id"],
    productTmplId: json["productTmplId"],
    name: json["name"],
    description: json["description"],
    price: json["price"],
    retailPrice: json["retail_price"],
    departmentPrice: json["department_price"],
    wholesalePrice: json["wholesale_price"],
    supermarketPrice: json["supermarket_price"],
    enLang: json["enLang"],
    unit: json["unit"],
    productId: json["productId"],
    productImages: List<dynamic>.from(json["productImages"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "imageUrl": List<dynamic>.from(imageUrl.map((x) => x)),
    "qtyAvailable": qtyAvailable,
    "mlLang": mlLang,
    "available": available,
    "id": id,
    "productTmplId": productTmplId,
    "name": name,
    "description": description,
    "price": price,
    "retail_price": retailPrice,
    "department_price": departmentPrice,
    "wholesale_price": wholesalePrice,
    "supermarket_price": supermarketPrice,
    "enLang": enLang,
    "unit": unit,
    "productId": productId,
    "productImages": List<dynamic>.from(productImages.map((x) => x)),
  };
}
