// To parse this JSON data, do
//
//     final paymentResponse = paymentResponseFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'payment_model.g.dart';

@JsonSerializable()
class PaymentResponse {
  PaymentResponse({
    this.jsonrpc,
    this.id,
    this.paymentResult,
  });

  String? jsonrpc;
  dynamic id;
  @JsonKey(name: 'result')
  PaymentResult? paymentResult;

  factory PaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentResponseToJson(this);
}

@JsonSerializable()
class PaymentResult {
  PaymentResult({
    this.status,
    this.message,
    this.creditList,
  });

  bool? status;
  String? message;
  @JsonKey(name: 'credit_list')
  List<CreditList>? creditList;

  factory PaymentResult.fromJson(Map<String, dynamic> json) =>
      _$PaymentResultFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentResultToJson(this);
}

@JsonSerializable()
class CreditList {
  CreditList({
    this.totalAmount,
    this.type,
    this.partnerId,
    this.paymentCreated,
  });
  @JsonKey(name: 'total_amount')
  double? totalAmount;
  String? type;
  @JsonKey(name: 'partner_id')
  int? partnerId;
  @JsonKey(name: 'payment Created')
  bool? paymentCreated;

  factory CreditList.fromJson(Map<String, dynamic> json) =>
      _$CreditListFromJson(json);

  Map<String, dynamic> toJson() => _$CreditListToJson(this);
}
