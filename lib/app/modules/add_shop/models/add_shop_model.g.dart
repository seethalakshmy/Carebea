// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_shop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddShopResponse _$AddShopResponseFromJson(Map<String, dynamic> json) =>
    AddShopResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      addShopResult: json['result'] == null
          ? null
          : AddShopResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddShopResponseToJson(AddShopResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.addShopResult,
    };

AddShopResult _$AddShopResultFromJson(Map<String, dynamic> json) =>
    AddShopResult(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      shopId: json['shop_id'] as int?,
      shopName: json['shop_name'] as String?,
    );

Map<String, dynamic> _$AddShopResultToJson(AddShopResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'shop_id': instance.shopId,
      'shop_name': instance.shopName,
    };
