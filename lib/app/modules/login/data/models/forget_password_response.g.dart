// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgetPasswordResponse _$ForgetPasswordResponseFromJson(Map<String, dynamic> json) => ForgetPasswordResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: json['result'] == null ? null : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForgetPasswordResponseToJson(ForgetPasswordResponse instance) => <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      otp: json['otp'] as String?,
      validOtp: json['valid_otp'] as String?,
      userId: json['user_id'] as int?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'otp': instance.otp,
      'valid_otp': instance.validOtp,
      'email': instance.email,
    };
