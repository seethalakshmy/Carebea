// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaints_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComplaintsListResponseModel _$$_ComplaintsListResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_ComplaintsListResponseModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ComplaintsListData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ComplaintsListResponseModelToJson(
    _$_ComplaintsListResponseModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data?.toJson());
  return val;
}
