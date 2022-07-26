import 'package:json_annotation/json_annotation.dart';

part 'confirm_order.g.dart';

@JsonSerializable()
class ConfirmOrderResponse {
  ConfirmOrderResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  final String? jsonrpc;
  final dynamic id;
  final ConfirmOrderResult? result;

  factory ConfirmOrderResponse.fromJson(Map<String, dynamic> json) => _$ConfirmOrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmOrderResponseToJson(this);
}

@JsonSerializable()
class ConfirmOrderResult {
  ConfirmOrderResult({
    this.status,
    this.message,
  });

  final bool? status;
  final String? message;

  factory ConfirmOrderResult.fromJson(Map<String, dynamic> json) => _$ConfirmOrderResultFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmOrderResultToJson(this);
}
