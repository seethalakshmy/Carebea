// To parse this JSON data, do
//
//     final addShopResponse = addShopResponseFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'add_shop_model.g.dart';


@JsonSerializable()
class AddShopResponse {
  AddShopResponse({
    this.jsonrpc,
    this.id,
    this.addShopResult,
  });

  String? jsonrpc;
  dynamic id;
  @JsonKey(name: 'result')
  AddShopResult? addShopResult;

  factory AddShopResponse.fromJson(Map<String, dynamic> json) => _$AddShopResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddShopResponseToJson(this);
}




@JsonSerializable()
class AddShopResult {
  AddShopResult({
    this.status,
    this.message,
    this.shopId,
    this.shopName,
  });

  bool? status;
  String? message;
  @JsonKey(name: 'shop_id')
  int? shopId;
  @JsonKey(name: 'shop_name')
  String? shopName;

  factory  AddShopResult .fromJson(Map<String, dynamic> json) => _$AddShopResultFromJson(json);

  Map<String, dynamic> toJson() => _$AddShopResultToJson(this);
}

