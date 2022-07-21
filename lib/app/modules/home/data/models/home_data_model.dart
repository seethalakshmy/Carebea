import 'package:json_annotation/json_annotation.dart';

part 'home_data_model.g.dart';

@JsonSerializable()
class HomeData {
  HomeData({
    this.jsonrpc,
    this.id,
    this.result,
  });

  final String? jsonrpc;
  final dynamic id;
  final Result? result;

  factory HomeData.fromJson(Map<String, dynamic> json) => _$HomeDataFromJson(json);

  Map<String, dynamic> toJson() => _$HomeDataToJson(this);
}

@JsonSerializable()
class Result {
  Result({
    this.status,
    this.message,
    this.routeCount,
    this.todaysDelivery,
    this.totalOrders,
    this.upcomingOrdersList,
    this.latestShopList,
    this.defOpeningCredit,
  });

  final bool? status;
  final String? message;
  @JsonKey(name: "route_count")
  final int? routeCount;
  @JsonKey(name: "todays_delivery")
  final int? todaysDelivery;
  @JsonKey(name: "total_orders")
  final int? totalOrders;
  @JsonKey(name: "upcoming_orders_list")
  final List<UpcomingOrdersList>? upcomingOrdersList;
  @JsonKey(name: "latest_shop_list")
  final List<LatestShopList>? latestShopList;
  @JsonKey(name: "def_opening_credit")
  final String? defOpeningCredit;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

@JsonSerializable()
class LatestShopList {
  LatestShopList({
    this.id,
    this.name,
    this.userAddress,
    this.phone,
  });

  final int? id;
  final String? name;
  @JsonKey(name: "user_address")
  final String? userAddress;
  final String? phone;

  factory LatestShopList.fromJson(Map<String, dynamic> json) => _$LatestShopListFromJson(json);

  Map<String, dynamic> toJson() => _$LatestShopListToJson(this);
}

@JsonSerializable()
class UpcomingOrdersList {
  UpcomingOrdersList({
    this.orderId,
    this.orderName,
    this.shopName,
    this.amountTotal,
    this.status,
  });

  @JsonKey(name: "order_id")
  final int? orderId;
  @JsonKey(name: "order_name")
  final String? orderName;
  @JsonKey(name: "shop_name")
  final String? shopName;
  @JsonKey(name: "amount_total")
  final double? amountTotal;
  final String? status;

  factory UpcomingOrdersList.fromJson(Map<String, dynamic> json) => _$UpcomingOrdersListFromJson(json);

  Map<String, dynamic> toJson() => _$UpcomingOrdersListToJson(this);
}
