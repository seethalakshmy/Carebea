// To parse this JSON data, do
//
//     final orderListResponse = orderListResponseFromJson(jsonString);

import 'dart:convert';

import 'package:carebea/app/modules/create_order/model/create_order.dart';
import 'package:intl/intl.dart';
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
  @JsonKey(name: "filter_vals")
  FilterVals? filterVals;
  @JsonKey(name: "payment_methods")
  List<PaymentMethod>? paymentMethods;

  factory OrderListResult.fromJson(Map<String, dynamic> json) => _$OrderListResultFromJson(json);

  Map<String, dynamic> toJson() => _$OrderListResultToJson(this);
}

@JsonSerializable()
class FilterVals {
  FilterVals({
    this.date,
  });

  @JsonKey(name: "Date")
  List<Date>? date;

  factory FilterVals.fromJson(Map<String, dynamic> json) => _$FilterValsFromJson(json);

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

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);

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
    this.deliveryDate,
    this.productTotal,
    this.shopName,
    this.amountDue,
    this.outstandingAmount,
    this.shopLastName,
    this.srName,
    this.shopMobile,
    this.warehouseId,
    this.warehouseName,
    this.paymentMethod,this.shopLatitude,this.shopLongitude,this.shopAddress
  });

  int? id;
  @JsonKey(name: 'shop_mobile')
  String? shopMobile;
  @JsonKey(name: 'warehouse_id')
  int? warehouseId;
  @JsonKey(name: 'warehouse_name')
  String? warehouseName;
  @JsonKey(name: 'payment_method')
  int? paymentMethod;
  String? name;
  @JsonKey(name: 'amount_untaxed')
  double? amountUntaxed;
  @JsonKey(name: 'amount_total')
  double? amountTotal;
  @JsonKey(name: 'shop_latitude')
  double? shopLatitude;
  @JsonKey(name: 'shop_longitude')
  double? shopLongitude;
  @JsonKey(name: 'product_total')
  double? productTotal;
  @JsonKey(name: 'total_lines')
  int? totalLines;
  @JsonKey(name: 'order_id')
  int? orderId;
  @JsonKey(name: 'image_url_list')
  List<dynamic>? imageUrlList;
  @JsonKey(name: 'date_order')
  DateTime? dateOrder;
  @JsonKey(ignore: true)
  DateTime? deliveryDate;
  String? status;
  @JsonKey(name: 'user_address')
  String? userAddress;
  @JsonKey(name: 'sr_name')
  String? srName;
  @JsonKey(name: 'shop_name')
  String? shopName;
  @JsonKey(name: 'shop_address')
  String? shopAddress;
  @JsonKey(name: 'shop_last_name')
  String? shopLastName;
  @JsonKey(name: 'amount_tax')
  double? amountTax;
  @JsonKey(name: 'outstanding_amount')
  double? outstandingAmount;
  @JsonKey(name: 'amount_due')
  double? amountDue;
  @JsonKey(name: 'product_list')
  List<ProductList>? productList;

  factory History.fromJson(Map<String, dynamic> json) => _$HistoryFromJson(json)
    ..deliveryDate = json['delivery_date'] == null || json['delivery_date'] == 'False'
        ? null
        : DateFormat("y-MM-dd").parse(json['delivery_date']);

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

  double? supermarketPrice;
  String? enLang;
  String? unit;
  int? productId;
  List<dynamic>? productImages;
  @JsonKey(name: 'product_uom_qty')
  double? productUomQty;
  @JsonKey(name: 'en_lang')
  String? productListEnLang;
  double? total;
  @JsonKey(name: 'date_order')
  DateTime? dateOrder;

  factory ProductList.fromJson(Map<String, dynamic> json) => _$ProductListFromJson(json);

  Map<String, dynamic> toJson() => _$ProductListToJson(this);
}
