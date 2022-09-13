// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) =>
    PaymentResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      paymentResult: json['result'] == null
          ? null
          : PaymentResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentResponseToJson(PaymentResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.paymentResult,
    };

PaymentResult _$PaymentResultFromJson(Map<String, dynamic> json) =>
    PaymentResult(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      creditList: (json['credit_list'] as List<dynamic>?)
          ?.map((e) => CreditList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaymentResultToJson(PaymentResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'credit_list': instance.creditList,
    };

CreditList _$CreditListFromJson(Map<String, dynamic> json) => CreditList(
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      type: json['type'] as String?,
      partnerId: json['partner_id'] as int?,
      paymentCreated: json['payment Created'] as bool?,
    );

Map<String, dynamic> _$CreditListToJson(CreditList instance) =>
    <String, dynamic>{
      'total_amount': instance.totalAmount,
      'type': instance.type,
      'partner_id': instance.partnerId,
      'payment Created': instance.paymentCreated,
    };
