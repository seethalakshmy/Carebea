// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_routes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteListResponse _$RouteListResponseFromJson(Map<String, dynamic> json) =>
    RouteListResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      routeListResult: json['result'] == null
          ? null
          : RouteListResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RouteListResponseToJson(RouteListResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.routeListResult,
    };

RouteListResult _$RouteListResultFromJson(Map<String, dynamic> json) =>
    RouteListResult(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      stateCount: json['route_count'] as int?,
      poolList: (json['route_list'] as List<dynamic>?)
          ?.map((e) => PoolList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RouteListResultToJson(RouteListResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'route_count': instance.stateCount,
      'route_list': instance.poolList,
    };

PoolList _$PoolListFromJson(Map<String, dynamic> json) => PoolList(
      id: json['id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$PoolListToJson(PoolList instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
    };
