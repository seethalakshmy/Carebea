// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_invoice_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerateInvoiceResponse _$GenerateInvoiceResponseFromJson(
        Map<String, dynamic> json) =>
    GenerateInvoiceResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: json['result'] == null
          ? null
          : GenerateInvoiceResult.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerateInvoiceResponseToJson(
        GenerateInvoiceResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

GenerateInvoiceResult _$GenerateInvoiceResultFromJson(
        Map<String, dynamic> json) =>
    GenerateInvoiceResult(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      invoiceAvailable: json['invoice_available'] as bool?,
      base64Invoice: json['base64_invoice'] as String?,
    );

Map<String, dynamic> _$GenerateInvoiceResultToJson(
        GenerateInvoiceResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'invoice_available': instance.invoiceAvailable,
      'base64_invoice': instance.base64Invoice,
    };
