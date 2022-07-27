import 'package:json_annotation/json_annotation.dart';

part 'generate_invoice_response.g.dart';

@JsonSerializable()
class GenerateInvoiceResponse {
  GenerateInvoiceResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  final String? jsonrpc;
  final dynamic id;
  final GenerateInvoiceResult? result;

  factory GenerateInvoiceResponse.fromJson(Map<String, dynamic> json) => _$GenerateInvoiceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GenerateInvoiceResponseToJson(this);
}

@JsonSerializable()
class GenerateInvoiceResult {
  GenerateInvoiceResult({
    this.status,
    this.message,
    this.invoiceAvailable,
    this.base64Invoice,
  });

  final bool? status;
  final String? message;
  @JsonKey(name: "invoice_available")
  final bool? invoiceAvailable;
  @JsonKey(name: "base64_invoice")
  final String? base64Invoice;

  factory GenerateInvoiceResult.fromJson(Map<String, dynamic> json) => _$GenerateInvoiceResultFromJson(json);

  Map<String, dynamic> toJson() => _$GenerateInvoiceResultToJson(this);
}
