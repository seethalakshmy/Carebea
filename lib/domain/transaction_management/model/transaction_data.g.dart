// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionData _$$_TransactionDataFromJson(Map<String, dynamic> json) =>
    _$_TransactionData(
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => Transactions.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as num?,
      offset: json['offset'] as num?,
      actualLimit: json['actualLimit'] as num?,
    );

Map<String, dynamic> _$$_TransactionDataToJson(_$_TransactionData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transactions', instance.transactions?.map((e) => e.toJson()).toList());
  writeNotNull('totalCount', instance.totalCount);
  writeNotNull('offset', instance.offset);
  writeNotNull('actualLimit', instance.actualLimit);
  return val;
}
