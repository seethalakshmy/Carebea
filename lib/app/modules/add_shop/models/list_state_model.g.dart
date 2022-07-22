// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StateListResponse _$StateListResponseFromJson(Map<String, dynamic> json) =>
    StateListResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      stateListResult: json['result'] == null
          ? null
          : StateListResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StateListResponseToJson(StateListResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.stateListResult,
    };

StateListResult _$StateListResultFromJson(Map<String, dynamic> json) =>
    StateListResult(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      stateCount: json['state_count'] as int?,
      stateList: (json['state_list'] as List<dynamic>?)
          ?.map((e) => StateList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StateListResultToJson(StateListResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'state_count': instance.stateCount,
      'state_list': instance.stateList,
    };

StateList _$StateListFromJson(Map<String, dynamic> json) => StateList(
      stateId: json['state_id'] as int?,
      stateName: json['state_name'] as String?,
    );

Map<String, dynamic> _$StateListToJson(StateList instance) => <String, dynamic>{
      'state_id': instance.stateId,
      'state_name': instance.stateName,
    };
