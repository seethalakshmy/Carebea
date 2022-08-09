// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    ProfileResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      profileResponseResult: json['result'] == null
          ? null
          : ProfileResponseResult.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileResponseToJson(ProfileResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.profileResponseResult,
    };

ProfileResponseResult _$ProfileResponseResultFromJson(
        Map<String, dynamic> json) =>
    ProfileResponseResult(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      zip: json['zip'] as String?,
      phone: json['phone'] as String?,
      mobile: json['mobile'] as String?,
      imgUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$ProfileResponseResultToJson(
        ProfileResponseResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'name': instance.name,
      'email': instance.email,
      'zip': instance.zip,
      'phone': instance.phone,
      'mobile': instance.mobile,
    };
