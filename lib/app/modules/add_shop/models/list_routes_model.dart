// To parse this JSON data, do
//
//     final routeListResponse = routeListResponseFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'list_routes_model.g.dart';


@JsonSerializable()
class RouteListResponse {
  RouteListResponse({
    this.jsonrpc,
    this.id,
    this.routeListResult,
  });

  String? jsonrpc;
  dynamic id;
  @JsonKey(name: 'result')
  RouteListResult? routeListResult;

  factory RouteListResponse.fromJson(Map<String, dynamic> json) => _$RouteListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RouteListResponseToJson(this);
}
@JsonSerializable()
class RouteListResult {
  RouteListResult({
    this.status,
    this.message,
    this.stateCount,
    this.poolList,
  });

  bool? status;
  String? message;
  @JsonKey(name: 'state_count')
  int? stateCount;
  @JsonKey(name: 'pool_list')
  List<PoolList>? poolList;

  factory RouteListResult.fromJson(Map<String, dynamic> json) => _$RouteListResultFromJson(json);

  Map<String, dynamic> toJson() => _$RouteListResultToJson(this);
}
@JsonSerializable()
class PoolList {
  PoolList({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory  PoolList.fromJson(Map<String, dynamic> json) => _$PoolListFromJson(json);

  Map<String, dynamic> toJson() => _$PoolListToJson(this);
}
