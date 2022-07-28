// To parse this JSON data, do
//
//     final deliveryHomePageResponse = deliveryHomePageResponseFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'delivery_home_model.g.dart';

@JsonSerializable()
class DeliveryHomePageResponse {
  DeliveryHomePageResponse({
    this.jsonrpc,
    this.id,
    this.deliveryHomePageResult,
  });

  String? jsonrpc;
  dynamic id;
  @JsonKey(name: 'result')
  DeliveryHomePageResult? deliveryHomePageResult;

  factory DeliveryHomePageResponse.fromJson(Map<String, dynamic> json) => _$DeliveryHomePageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryHomePageResponseToJson(this);
}

@JsonSerializable()
class DeliveryHomePageResult {
  DeliveryHomePageResult({
    this.status,
    this.message,
    this.todaysDelivery,
    this.totalOrdersDelivered,
    this.orderHistory,
    this.upcomingDeliveryList,
  });

  bool? status;
  String? message;
  @JsonKey(name: 'todays_delivery')
  int? todaysDelivery;
  @JsonKey(name: 'total_orders_delivered')
  int? totalOrdersDelivered;
  @JsonKey(name: 'order_history')
  int? orderHistory;
  @JsonKey(name: 'upcoming_delivery_list')
  List<UpcomingDeliveryList>? upcomingDeliveryList;

  factory DeliveryHomePageResult.fromJson(Map<String, dynamic> json) => _$DeliveryHomePageResultFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryHomePageResultToJson(this);
}

@JsonSerializable()
class UpcomingDeliveryList {
  UpcomingDeliveryList({this.orderId, this.orderName, this.shopName, this.amountTotal, this.status, this.shopAddress});
  @JsonKey(name: 'order_id')
  int? orderId;
  @JsonKey(name: 'order_name')
  String? orderName;
  @JsonKey(name: 'shop_name')
  String? shopName;
  @JsonKey(name: 'shop_mobile')
  String? shopMobile;
  @JsonKey(name: 'shop_address')
  String? shopAddress;
  @JsonKey(name: 'amount_total')
  double? amountTotal;
  String? status;

  factory UpcomingDeliveryList.fromJson(Map<String, dynamic> json) => _$UpcomingDeliveryListFromJson(json);

  Map<String, dynamic> toJson() => _$UpcomingDeliveryListToJson(this);
}
