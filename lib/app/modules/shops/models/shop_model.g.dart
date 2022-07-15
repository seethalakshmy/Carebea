// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopListResponse _$ShopListResponseFromJson(Map<String, dynamic> json) =>
    ShopListResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      shopListResult: json['result'] == null
          ? null
          : ShopListResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShopListResponseToJson(ShopListResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.shopListResult,
    };

ShopListResult _$ShopListResultFromJson(Map<String, dynamic> json) =>
    ShopListResult(
      status: json['status'] as bool?,
      shopCount: json['shopCount'] as int?,
      message: json['message'] as String?,
      shopList: (json['shop_list'] as List<dynamic>?)
          ?.map((e) => ShopList.fromJson(e as Map<String, dynamic>))
          .toList(),
      filterVals: json['filter_vals'] == null
          ? null
          : FilterVal.fromJson(json['filter_vals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShopListResultToJson(ShopListResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'shopCount': instance.shopCount,
      'message': instance.message,
      'shop_list': instance.shopList,
      'filter_vals': instance.filterVals,
    };

FilterVal _$FilterValFromJson(Map<String, dynamic> json) => FilterVal(
      category: (json['Category'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      zone: (json['Zone'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      route: (json['Route'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FilterValToJson(FilterVal instance) => <String, dynamic>{
      'Category': instance.category,
      'Zone': instance.zone,
      'Route': instance.route,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

ShopList _$ShopListFromJson(Map<String, dynamic> json) => ShopList(
      id: json['id'] as int?,
      name: json['name'] as String?,
      category: json['category'] as String?,
      type: json['type'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      altPhone: json['alt_phone'] as String?,
      gstNo: json['gst_no'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      credBalance: json['cred_balance'] as int?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ShopListToJson(ShopList instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'type': instance.type,
      'email': instance.email,
      'phone': instance.phone,
      'alt_phone': instance.altPhone,
      'gst_no': instance.gstNo,
      'address': instance.address,
      'cred_balance': instance.credBalance,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      localArea: json['local_area'] as String?,
      street2: json['street2'] as String?,
      district: json['district'] as String?,
      zip: json['zip'] as String?,
      stateId: json['state_id'] as int?,
      stateName: json['state_name'] as String?,
      countryId: json['country_id'] as int?,
      countryName: json['country_name'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'local_area': instance.localArea,
      'street2': instance.street2,
      'district': instance.district,
      'zip': instance.zip,
      'state_id': instance.stateId,
      'state_name': instance.stateName,
      'country_id': instance.countryId,
      'country_name': instance.countryName,
    };
