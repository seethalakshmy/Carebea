import 'package:json_annotation/json_annotation.dart';

part 'create_order.g.dart';

@JsonSerializable()
class CreateOrderResponse {
  CreateOrderResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  final String? jsonrpc;
  final dynamic id;
  final Result? result;

  factory CreateOrderResponse.fromJson(Map<String, dynamic> json) => _$CreateOrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderResponseToJson(this);
}

@JsonSerializable()
class Result {
  Result({
    this.status,
    this.message,
    this.orderId,
    this.paymentMethods,
    this.amountTax,
    this.amountTotal,
    this.amountUntaxed,
    this.productTotal,
  });

  final bool? status;
  final String? message;
  @JsonKey(name: "order_id")
  final int? orderId;
  @JsonKey(name: "payment_methods")
  final List<PaymentMethod>? paymentMethods;
  @JsonKey(name: 'amount_total')
  final double? amountTotal;
  @JsonKey(name: 'amount_untaxed')
  final double? amountUntaxed;
  @JsonKey(name: 'amount_tax')
  final double? amountTax;
  @JsonKey(name: 'product_total')
  final double? productTotal;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

@JsonSerializable()
class PaymentMethod {
  PaymentMethod({
    this.id,
    this.name,
    this.code,
  });

  final int? id;
  final String? name;
  final String? code;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => _$PaymentMethodFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);
}
