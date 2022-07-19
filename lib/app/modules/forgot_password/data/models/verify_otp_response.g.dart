// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpResponse _$VerifyOtpResponseFromJson(Map<String, dynamic> json) =>
    VerifyOtpResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: json['result'] == null
          ? null
          : VerifyOtpResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerifyOtpResponseToJson(VerifyOtpResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

VerifyOtpResult _$VerifyOtpResultFromJson(Map<String, dynamic> json) =>
    VerifyOtpResult(
      status: json['status'] as bool?,
      email: json['email'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$VerifyOtpResultToJson(VerifyOtpResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'email': instance.email,
      'message': instance.message,
    };
