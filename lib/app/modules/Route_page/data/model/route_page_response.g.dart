// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_page_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteByDateResponse _$RouteByDateResponseFromJson(Map<String, dynamic> json) =>
    RouteByDateResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: json['result'] == null
          ? null
          : RouteByDateResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RouteByDateResponseToJson(
        RouteByDateResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

RouteByDateResult _$RouteByDateResultFromJson(Map<String, dynamic> json) =>
    RouteByDateResult(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      routeList: (json['route_list'] as List<dynamic>?)
          ?.map((e) => RouteList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RouteByDateResultToJson(RouteByDateResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'route_list': instance.routeList,
    };

RouteList _$RouteListFromJson(Map<String, dynamic> json) => RouteList(
      routeId: json['route_id'] as int?,
      routeName: json['route_name'] as String?,
      userAddress: json['user_address'] == null
          ? null
          : UserAddress.fromJson(json['user_address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RouteListToJson(RouteList instance) => <String, dynamic>{
      'route_id': instance.routeId,
      'route_name': instance.routeName,
      'user_address': instance.userAddress,
    };

UserAddress _$UserAddressFromJson(Map<String, dynamic> json) => UserAddress(
      localArea: json['local_area'] as String?,
      street2: json['street2'] as String?,
      district: json['district'] as String?,
      zip: json['zip'] as String?,
      stateName: json['state_name'] as String?,
      countryName: json['country_name'] as String?,
    );

Map<String, dynamic> _$UserAddressToJson(UserAddress instance) =>
    <String, dynamic>{
      'local_area': instance.localArea,
      'street2': instance.street2,
      'district': instance.district,
      'zip': instance.zip,
      'state_name': instance.stateName,
      'country_name': instance.countryName,
    };
