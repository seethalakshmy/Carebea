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
      message: json['message'] as String?,
      userId: json['user_id'] as int?,
      userType: json['user_type'] as int?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      branch: (json['branch'] as List<dynamic>?)
          ?.map((e) => Branch.fromJson(e as Map<String, dynamic>))
          .toList(),
      zone: (json['zone'] as List<dynamic>?)
          ?.map((e) => Branch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EmailLoginToJson(EmailLogin instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'user_id': instance.userId,
      'user_type': instance.userType,
      'email': instance.email,
      'name': instance.name,
      'branch': instance.branch,
      'zone': instance.zone,
    };

Branch _$BranchFromJson(Map<String, dynamic> json) => Branch(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$BranchToJson(Branch instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Zone _$ZoneFromJson(Map<String, dynamic> json) => Zone(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ZoneToJson(Zone instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
