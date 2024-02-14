import 'package:carebea/app/modules/shops/data/order_list_datasource.dart';
import 'package:carebea/app/modules/shops/data/shop_list_datasource.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:flutter/cupertino.dart';

import '../models/order_list_model.dart';

class OrderListRepo {
  OrderDataSource orderDataSource = OrderDataSource();

  ///OrderListShopDeatilPage
  Future<OrderListResponse> orderList(
      int salesPersonId, String orderType, int shopId) async {
    return orderDataSource.orderList(
        salesPersonId: salesPersonId, orderType: orderType, shopId: shopId);
  }

  Future<OrderListResponse> allOrdersList(
    int salesPersonId,
    String orderType, {
    String? filtername,
    int? filterid,
    String? query,
    int? pageNumber,
    int? pageSize,
  }) async {
    return orderDataSource.orderList(
        salesPersonId: salesPersonId,
        orderType: orderType,
        filterName: filtername,
        filterId: filterid,
        query: query,
        pageNumber: pageNumber,
        pageSize: pageSize);
  }

  Future<OrderListResponse> orderDetails({int? salesPersonId, int? orderId}) {
    return orderDataSource.orderList(
        salesPersonId: salesPersonId!, orderId: orderId);
  }

  Future<OrderListResponse> orderListDelivery(
      {int? driverId, String? filterName, int? filterId, int? salesPersonId}) {
    return orderDataSource.orderList(
        driverId: driverId,
        filterName: filterName,
        filterId: filterId,
        salesPersonId: salesPersonId);
  }

  Future<OrderListResponse> allOrdersDelivery(
      {int? driverId, int? salesPersonId}) {
    return orderDataSource.orderList(
        driverId: driverId, salesPersonId: salesPersonId);
  }

  Future<OrderListResponse> orderDetailsDelivery(
      {int? driverId, int? orderId}) {
    return orderDataSource.orderList(driverId: driverId, orderId: orderId);
  }

  Future<OrderListResponse> upcomingOrdersDelivery(
      {int? driverId, String? orderType}) {
    return orderDataSource.orderList(driverId: driverId, orderType: orderType);
  }
}
