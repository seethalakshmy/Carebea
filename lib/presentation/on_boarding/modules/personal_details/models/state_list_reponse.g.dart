// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_list_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StateListResponse _$$_StateListResponseFromJson(Map<String, dynamic> json) =>
    _$_StateListResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => StateItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StateListResponseToJson(
        _$_StateListResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
