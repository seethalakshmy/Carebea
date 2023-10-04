// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResendOTPResponse _$$_ResendOTPResponseFromJson(Map<String, dynamic> json) =>
    _$_ResendOTPResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$$_ResendOTPResponseToJson(
    _$_ResendOTPResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data);
  return val;
}
