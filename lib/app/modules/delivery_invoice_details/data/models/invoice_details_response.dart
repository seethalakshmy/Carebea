import 'package:json_annotation/json_annotation.dart';

part 'invoice_details_response.g.dart';

@JsonSerializable()
class InvoiceDetailsResponse {
  InvoiceDetailsResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  final String? jsonrpc;
  final dynamic id;
  final InvoiceDetailsResult? result;

  factory InvoiceDetailsResponse.fromJson(Map<String, dynamic> json) => _$InvoiceDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceDetailsResponseToJson(this);
}

@JsonSerializable()
class InvoiceDetailsResult {
  InvoiceDetailsResult({
    this.orderId,
    this.invoiceId,
    this.userAddress,
    this.deliveryDate,
    this.deliveryPersonId,
    this.paymentMethod,
    this.itemTotal,
    this.grandTotal,
    this.status,
    this.message,
  });

  @JsonKey(name: "order_id")
  final int? orderId;
  @JsonKey(name: "invoice_id")
  final int? invoiceId;
  @JsonKey(name: "user_address")
  final String? userAddress;
  @JsonKey(name: "delivery_date", ignore: true)
  DateTime? deliveryDate;

  @JsonKey(name: "delivery_person_id", ignore: true)
  String? deliveryPersonId;
  @JsonKey(name: "payment_method")
  final String? paymentMethod;
  @JsonKey(name: "item_total")
  final double? itemTotal;
  @JsonKey(name: "grand_total")
  final double? grandTotal;
  final bool? status;
  final String? message;

  factory InvoiceDetailsResult.fromJson(Map<String, dynamic> json) => _$InvoiceDetailsResultFromJson(json)
    ..deliveryPersonId = (json["delivery_person_id"].toString() == "false" ? null : json["delivery_person_id"])
    ..deliveryDate = (json["delivery_date"].toString() == "false" ? null : DateTime.parse(json["delivery_date"]));

  Map<String, dynamic> toJson() => _$InvoiceDetailsResultToJson(this);
}
