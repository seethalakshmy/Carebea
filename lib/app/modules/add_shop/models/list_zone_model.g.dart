// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_zone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZoneListResponse _$ZoneListResponseFromJson(Map<String, dynamic> json) =>
    ZoneListResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      zoneListResult: json['result'] == null
          ? null
          : ZoneListResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ZoneListResponseToJson(ZoneListResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.zoneListResult,
    };

ZoneListResult _$ZoneListResultFromJson(Map<String, dynamic> json) =>
    ZoneListResult(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      zoneCount: json['zone_count'] as int?,
      poolList: (json['pool_list'] as List<dynamic>?)
          ?.map((e) => PoolList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ZoneListResultToJson(ZoneListResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'zone_count': instance.zoneCount,
      'pool_list': instance.poolList,
    };

PoolList _$PoolListFromJson(Map<String, dynamic> json) => PoolList(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$PoolListToJson(PoolList instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
