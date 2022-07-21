// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeData _$HomeDataFromJson(Map<String, dynamic> json) => HomeData(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeDataToJson(HomeData instance) => <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      routeCount: json['route_count'] as int?,
      todaysDelivery: json['todays_delivery'] as int?,
      totalOrders: json['total_orders'] as int?,
      upcomingOrdersList: (json['upcoming_orders_list'] as List<dynamic>?)
          ?.map((e) => UpcomingOrdersList.fromJson(e as Map<String, dynamic>))
          .toList(),
      latestShopList: (json['latest_shop_list'] as List<dynamic>?)
          ?.map((e) => LatestShopList.fromJson(e as Map<String, dynamic>))
          .toList(),
      defOpeningCredit: json['def_opening_credit'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'route_count': instance.routeCount,
      'todays_delivery': instance.todaysDelivery,
      'total_orders': instance.totalOrders,
      'upcoming_orders_list': instance.upcomingOrdersList,
      'latest_shop_list': instance.latestShopList,
      'def_opening_credit': instance.defOpeningCredit,
    };

LatestShopList _$LatestShopListFromJson(Map<String, dynamic> json) =>
    LatestShopList(
      id: json['id'] as int?,
      name: json['name'] as String?,
      userAddress: json['user_address'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$LatestShopListToJson(LatestShopList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user_address': instance.userAddress,
      'phone': instance.phone,
    };

UpcomingOrdersList _$UpcomingOrdersListFromJson(Map<String, dynamic> json) =>
    UpcomingOrdersList(
      orderId: json['order_id'] as int?,
      orderName: json['order_name'] as String?,
      shopName: json['shop_name'] as String?,
      amountTotal: (json['amount_total'] as num?)?.toDouble(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$UpcomingOrdersListToJson(UpcomingOrdersList instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'order_name': instance.orderName,
      'shop_name': instance.shopName,
      'amount_total': instance.amountTotal,
      'status': instance.status,
    };
