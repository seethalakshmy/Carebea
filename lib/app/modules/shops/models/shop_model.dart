// To parse this JSON data, do
//
//     final storeListResponse = storeListResponseFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'shop_model.g.dart';


@JsonSerializable()
class ShopListResponse {
  ShopListResponse({
    this.jsonrpc,
    this.id,
    this.shopListResult,
  });

  String? jsonrpc;
  dynamic id;
  @JsonKey(name: 'result')
  ShopListResult? shopListResult;
  factory ShopListResponse.fromJson(Map<String, dynamic> json) => _$ShopListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ShopListResponseToJson(this);
}



@JsonSerializable()
class ShopListResult {
  ShopListResult({
    this.status,
    this.shopCount,
    this.message,
    this.shopList,
    this.filterVals,
  });

  bool? status;
  int? shopCount;
  String? message;
  @JsonKey(name: 'shop_list')
  List<ShopList>? shopList;
  @JsonKey(name: 'filter_vals')
  FilterVal? filterVals;

  factory ShopListResult.fromJson(Map<String, dynamic> json) => _$ShopListResultFromJson(json);

  Map<String, dynamic> toJson() => _$ShopListResultToJson(this);
}
@JsonSerializable()
class FilterVal {
  FilterVal({
    this.category,
    this.zone,
    this.route,
  });
  @JsonKey(name: 'Category')
  List<Category>? category;
  @JsonKey(name: 'Zone')
  List<Category>? zone;
  @JsonKey(name: 'Route')
  List<Category>? route;

  factory FilterVal.fromJson(Map<String, dynamic> json) => _$FilterValFromJson(json);

  Map<String, dynamic> toJson() => _$FilterValToJson(this);
}
@JsonSerializable()
class Category {
  Category({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
@JsonSerializable()
class ShopList {
  ShopList({
    this.id,
    this.name,
    this.category,
    this.type,
    this.email,
    this.phone,
    this.altPhone,
    this.gstNo,
    this.address,
    this.credBalance,
    this.latitude,
    this.longitude,
  });

  int? id;
  String? name;
  @JsonKey(name: 'Category')
  String? category;
  String? type;
  String? email;
  String? phone;
  @JsonKey(name: 'alt_phone')
  String? altPhone;
  @JsonKey(name: 'gst_no')
  String? gstNo;
  Address? address;
  @JsonKey(name: 'cred_balance')
  int? credBalance;
  double? latitude;
  double? longitude;

  factory ShopList.fromJson(Map<String, dynamic> json) => _$ShopListFromJson(json);

  Map<String, dynamic> toJson() => _$ShopListToJson(this);
}
@JsonSerializable()
class Address {
  Address({
    this.localArea,
    this.street2,
    this.district,
    this.zip,
    this.stateId,
    this.stateName,
    this.countryId,
    this.countryName,
  });
  @JsonKey(name: 'local_area')
  String? localArea;
  String? street2;
  String? district;
  String? zip;
  @JsonKey(name: 'state_id')
  int? stateId;
  @JsonKey(name: 'state_name')
  String? stateName;
  @JsonKey(name: 'country_id')
  int? countryId;
  @JsonKey(name: 'country_name')
  String? countryName;
  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

