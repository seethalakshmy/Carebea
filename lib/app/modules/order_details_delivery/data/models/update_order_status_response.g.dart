// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateOrderStatusResponse _$UpdateOrderStatusResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateOrderStatusResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: json['result'] == null
          ? null
          : UpdateOrderStatusResult.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateOrderStatusResponseToJson(
        UpdateOrderStatusResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

UpdateOrderStatusResult _$UpdateOrderStatusResultFromJson(
        Map<String, dynamic> json) =>
    UpdateOrderStatusResult(
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UpdateOrderStatusResultToJson(
        UpdateOrderStatusResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
