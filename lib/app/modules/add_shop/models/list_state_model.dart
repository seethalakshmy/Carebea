// To parse this JSON data, do
//
//     final stateListResponse = stateListResponseFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'list_state_model.g.dart';


@JsonSerializable()
class StateListResponse {
  StateListResponse({
    this.jsonrpc,
    this.id,
    this.stateListResult,
  });

  String? jsonrpc;
  dynamic id;
  @JsonKey(name: 'result')
  StateListResult? stateListResult;

  factory StateListResponse.fromJson(Map<String, dynamic> json) => _$StateListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StateListResponseToJson(this);
}
@JsonSerializable()
class StateListResult {
  StateListResult({
    this.status,
    this.message,
    this.stateCount,
    this.stateList,
  });

  bool? status;
  String? message;
  @JsonKey(name: 'state_count')
  int? stateCount;
  @JsonKey(name: 'state_list')
  List<StateList>? stateList;

  factory StateListResult.fromJson(Map<String, dynamic> json) => _$StateListResultFromJson(json);

  Map<String, dynamic> toJson() => _$StateListResultToJson(this);
}
@JsonSerializable()
class StateList {
  StateList({
    this.stateId,
    this.stateName,
  });
@JsonKey(name: 'state_id')
  int? stateId;
  @JsonKey(name: 'state_name')
  String? stateName;

  factory StateList.fromJson(Map<String, dynamic> json) => _$StateListFromJson(json);

  Map<String, dynamic> toJson() => _$StateListToJson(this);
}
