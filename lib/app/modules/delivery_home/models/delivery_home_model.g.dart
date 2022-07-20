// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryHomePageResponse _$DeliveryHomePageResponseFromJson(
        Map<String, dynamic> json) =>
    DeliveryHomePageResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      deliveryHomePageResult: json['result'] == null
          ? null
          : DeliveryHomePageResult.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeliveryHomePageResponseToJson(
        DeliveryHomePageResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.deliveryHomePageResult,
    };

DeliveryHomePageResult _$DeliveryHomePageResultFromJson(
        Map<String, dynamic> json) =>
    DeliveryHomePageResult(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      todaysDelivery: json['todays_delivery'] as int?,
      totalOrdersDelivered: json['total_orders_delivered'] as int?,
      orderHistory: json['order_history'] as int?,
      upcomingDeliveryList: (json['upcoming_delivery_list'] as List<dynamic>?)
          ?.map((e) => UpcomingDeliveryList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DeliveryHomePageResultToJson(
        DeliveryHomePageResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'todays_delivery': instance.todaysDelivery,
      'total_orders_delivered': instance.totalOrdersDelivered,
      'order_history': instance.orderHistory,
      'upcoming_delivery_list': instance.upcomingDeliveryList,
    };

UpcomingDeliveryList _$UpcomingDeliveryListFromJson(
        Map<String, dynamic> json) =>
    UpcomingDeliveryList(
      orderId: json['order_id'] as int?,
      orderName: json['order_name'] as String?,
      shopName: json['shop_name'] as String?,
      amountTotal: (json['amount_total'] as num?)?.toDouble(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$UpcomingDeliveryListToJson(
        UpcomingDeliveryList instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'order_name': instance.orderName,
      'shop_name': instance.shopName,
      'amount_total': instance.amountTotal,
      'status': instance.status,
    };
