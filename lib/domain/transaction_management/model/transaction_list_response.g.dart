// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionListResponse _$$_TransactionListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionListResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : TransactionData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TransactionListResponseToJson(
    _$_TransactionListResponse instance) {
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
