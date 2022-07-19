// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePasswordResponse _$UpdatePasswordResponseFromJson(
        Map<String, dynamic> json) =>
    UpdatePasswordResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: json['result'] == null
          ? null
          : UpdatePasswordResult.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdatePasswordResponseToJson(
        UpdatePasswordResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

UpdatePasswordResult _$UpdatePasswordResultFromJson(
        Map<String, dynamic> json) =>
    UpdatePasswordResult(
      status: json['status'] as bool?,
      userId: json['user_id'] as int?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UpdatePasswordResultToJson(
        UpdatePasswordResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'user_id': instance.userId,
      'email': instance.email,
    };
