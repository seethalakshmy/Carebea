// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceDetailsResponse _$InvoiceDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    InvoiceDetailsResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: json['result'] == null
          ? null
          : InvoiceDetailsResult.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceDetailsResponseToJson(
        InvoiceDetailsResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

InvoiceDetailsResult _$InvoiceDetailsResultFromJson(
        Map<String, dynamic> json) =>
    InvoiceDetailsResult(
      orderId: json['order_id'] as int?,
      invoiceId: json['invoice_id'] as int?,
      userAddress: json['user_address'] as String?,
      deliveryDate: json['delivery_date'] as bool?,
      deliveryPersonId: json['delivery_person_id'] as String?,
      paymentMethod: json['payment_method'] as String?,
      itemTotal: (json['item_total'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$InvoiceDetailsResultToJson(
        InvoiceDetailsResult instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'invoice_id': instance.invoiceId,
      'user_address': instance.userAddress,
      'delivery_date': instance.deliveryDate,
      'delivery_person_id': instance.deliveryPersonId,
      'payment_method': instance.paymentMethod,
      'item_total': instance.itemTotal,
      'grand_total': instance.grandTotal,
      'status': instance.status,
      'message': instance.message,
    };
