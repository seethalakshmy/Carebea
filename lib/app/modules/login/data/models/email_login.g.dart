// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailLoginResponse _$EmailLoginResponseFromJson(Map<String, dynamic> json) =>
    EmailLoginResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      emailLogin: json['result'] == null
          ? null
          : EmailLogin.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmailLoginResponseToJson(EmailLoginResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.emailLogin,
    };

EmailLogin _$EmailLoginFromJson(Map<String, dynamic> json) => EmailLogin(
      status: json['status'] as bool?,
      userId: json['user_id'] as int?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      userType: json['user_type'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$EmailLoginToJson(EmailLogin instance) =>
    <String, dynamic>{
      'status': instance.status,
      'user_id': instance.userId,
      'user_type': instance.userType,
      'email': instance.email,
      'name': instance.name,
      'message': instance.message,
    };
