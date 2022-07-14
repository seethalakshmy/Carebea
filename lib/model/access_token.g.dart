// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAccessTokenResponse _$GetAccessTokenResponseFromJson(
        Map<String, dynamic> json) =>
    GetAccessTokenResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: json['result'] == null
          ? null
          : GetAccessTokenResult.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetAccessTokenResponseToJson(
        GetAccessTokenResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

GetAccessTokenResult _$GetAccessTokenResultFromJson(
        Map<String, dynamic> json) =>
    GetAccessTokenResult(
      status: json['status'] as bool?,
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$GetAccessTokenResultToJson(
        GetAccessTokenResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
