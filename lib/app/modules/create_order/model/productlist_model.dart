// To parse this JSON data, do
//
//     final productListResponse = productListResponseFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'productlist_model.g.dart';

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
  @JsonKey(name: 'product_list')
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

  List<dynamic>? imageUrl;
  double? qtyAvailable;
  String? mlLang;
  String? available;
  int? id;
  int? productTmplId;
  String? name;
  String? description;
  double? price;
  @JsonKey(name: 'retail_price')
  double? retailPrice;
  @JsonKey(name: 'department_price')
  double? departmentPrice;
  @JsonKey(name: 'wholesale_price')
  double? wholesalePrice;
  @JsonKey(name: 'supermarket_price')
  double? supermarketPrice;
  String? enLang;
  String? unit;
  int? productId;
  List<dynamic>? productImages;

  factory ProductList.fromJson(Map<String, dynamic> json) => _$ProductListFromJson(json);

  Map<String, dynamic> toJson() => _$ProductListToJson(this);
}
