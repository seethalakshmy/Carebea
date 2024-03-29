// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transactions _$$_TransactionsFromJson(Map<String, dynamic> json) =>
    _$_Transactions(
      serviceId: json['service_id'] as String?,
      serviceIdPublic: json['serviceId'] as String?,
      transactionId: json['_id'] as String?,
      transactionIdPublic: json['uniqueId'] as String?,
      transactionType: json['transactionType'] as String?,
      dateTime: json['date_time'] as String?,
      paidTo: json['receiverName'] as String?,
      receivedFrom: json['payerName'] as String?,
      paidFor: json['paid_for'] as String?,
      amount: json['amount'] as String?,
      cardNumber: json['cardNumber'] as String?,
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      user: json['user'] as String?,
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_TransactionsToJson(_$_Transactions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('service_id', instance.serviceId);
  writeNotNull('serviceId', instance.serviceIdPublic);
  writeNotNull('_id', instance.transactionId);
  writeNotNull('uniqueId', instance.transactionIdPublic);
  writeNotNull('transactionType', instance.transactionType);
  writeNotNull('date_time', instance.dateTime);
  writeNotNull('receiverName', instance.paidTo);
  writeNotNull('payerName', instance.receivedFrom);
  writeNotNull('paid_for', instance.paidFor);
  writeNotNull('amount', instance.amount);
  writeNotNull('cardNumber', instance.cardNumber);
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('user', instance.user);
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('id', instance.id);
  return val;
}
