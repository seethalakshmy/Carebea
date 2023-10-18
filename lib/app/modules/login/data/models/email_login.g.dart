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
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
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
      'data': instance.data,
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

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      token: json['token'] as String?,
      userId: json['user_id'] as int?,
      userEmailId: json['user_email_id'] as String?,
      profileName: json['profile_id'] as String?,
      isActive: json['is_active'] as bool?,
      refreshToken: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'token': instance.token,
      'user_id': instance.userId,
      'refresh_token': instance.refreshToken,
      'user_email_id': instance.userEmailId,
      'profile_id': instance.profileName,
      'is_active': instance.isActive,
    };
