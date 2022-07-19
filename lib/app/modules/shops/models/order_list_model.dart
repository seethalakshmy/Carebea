// To parse this JSON data, do
//
//     final orderListResponse = orderListResponseFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'order_list_model.g.dart';

@JsonSerializable()
class OrderListResponse {
  OrderListResponse({
    this.jsonrpc,
    this.id,
    this.orderListResult,
  });

  String? jsonrpc;
  dynamic id;
  @JsonKey(name: 'result')
  OrderListResult? orderListResult;

  factory OrderListResponse.fromJson(Map<String, dynamic> json) => _$OrderListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderListResponseToJson(this);
}
@JsonSerializable()
class OrderListResult {
  OrderListResult({
    this.status,
    this.message,
    this.history,
    this.filterVals,
  });

  bool? status;
  String? message;
  List<History>? history;
  FilterVals? filterVals;

  factory OrderListResult.fromJson(Map<String, dynamic> json) => _$OrderListResultFromJson(json);

  Map<String, dynamic> toJson() => _$OrderListResultToJson(this);
}
@JsonSerializable()
class FilterVals {
  FilterVals({
    this.date,
  });

  List<Date>? date;

  factory FilterVals.fromJson(Map<String, dynamic> json) =>
      _$FilterValsFromJson(json);

  Map<String, dynamic> toJson() => _$FilterValsToJson(this);
}
@JsonSerializable()
class Date {
  Date({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Date.fromJson(Map<String, dynamic> json) =>
      _$DateFromJson(json);

  Map<String, dynamic> toJson() => _$DateToJson(this);
}
@JsonSerializable()
class History {
  History({
    this.id,
    this.name,
    this.amountUntaxed,
    this.amountTotal,
    this.totalLines,
    this.orderId,
    this.imageUrlList,
    this.dateOrder,
    this.status,
    this.userAddress,
    this.amountTax,
    this.productList,
  });

  int? id;
  String? name;
  int? amountUntaxed;
  double? amountTotal;
  int? totalLines;
  int? orderId;
  List<dynamic>? imageUrlList;
  DateTime? dateOrder;
  String? status;
  String? userAddress;
  double? amountTax;
  List<ProductList>? productList;

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryToJson(this);
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
    this.productUomQty,
    this.productListEnLang,
    this.total,
    this.dateOrder,
  });

  List<dynamic>? imageUrl;
  int? qtyAvailable;
  String? mlLang;
  String? available;
  int? id;
  int? productTmplId;
  String? name;
  String? description;
  int? price;
  int? retailPrice;
  int? departmentPrice;
  int? wholesalePrice;
  int? supermarketPrice;
  String? enLang;
  String? unit;
  int? productId;
  List<dynamic>? productImages;
  int? productUomQty;
  String? productListEnLang;
  double? total;
  DateTime? dateOrder;

  factory ProductList.fromJson(Map<String, dynamic> json) =>
      _$ProductListFromJson(json);

  Map<String, dynamic> toJson() => _$ProductListToJson(this);
}
