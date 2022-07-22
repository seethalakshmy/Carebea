// To parse this JSON data, do
//
//     final zoneListResponse = zoneListResponseFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'list_zone_model.g.dart';


@JsonSerializable()
class ZoneListResponse {
  ZoneListResponse({
    this.jsonrpc,
    this.id,
    this.zoneListResult,
  });

  String? jsonrpc;
  dynamic id;
  @JsonKey(name: 'result')
  ZoneListResult? zoneListResult;

  factory ZoneListResponse.fromJson(Map<String, dynamic> json) => _$ZoneListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ZoneListResponseToJson(this);
}
@JsonSerializable()
class ZoneListResult {
  ZoneListResult({
    this.status,
    this.message,
    this.zoneCount,
    this.poolList,
  });

  bool? status;
  String? message;
  @JsonKey(name: 'zone_count')
  int? zoneCount;
  @JsonKey(name: 'pool_list')
  List<PoolList>? poolList;

  factory ZoneListResult.fromJson(Map<String, dynamic> json) => _$ZoneListResultFromJson(json);

  Map<String, dynamic> toJson() => _$ZoneListResultToJson(this);
}
@JsonSerializable()
class PoolList {
  PoolList({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory PoolList .fromJson(Map<String, dynamic> json) => _$PoolListFromJson(json);

  Map<String, dynamic> toJson() => _$PoolListToJson(this);
}
