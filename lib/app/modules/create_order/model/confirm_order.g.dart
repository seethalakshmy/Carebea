// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmOrderResponse _$ConfirmOrderResponseFromJson(
        Map<String, dynamic> json) =>
    ConfirmOrderResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: json['result'] == null
          ? null
          : ConfirmOrderResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfirmOrderResponseToJson(
        ConfirmOrderResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

ConfirmOrderResult _$ConfirmOrderResultFromJson(Map<String, dynamic> json) =>
    ConfirmOrderResult(
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ConfirmOrderResultToJson(ConfirmOrderResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
