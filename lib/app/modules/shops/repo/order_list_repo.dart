import 'package:carebea/app/modules/shops/data/order_list_datasource.dart';
import 'package:carebea/app/modules/shops/data/shop_list_datasource.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:flutter/cupertino.dart';

import '../models/order_list_model.dart';





class OrderListRepo{
  OrderDataSource orderDataSource = OrderDataSource();

  ///OrderListShopDeatilPage
  Future<OrderListResponse> orderList(int salesPersonId,String orderType,int shopId) async {
    return orderDataSource.orderList(salesPersonId: salesPersonId, orderType: orderType, shopId: shopId);
  }

  Future<OrderListResponse> allOrdersList(int salesPersonId,String orderType,{String? filtername,String? filterid,String? query})async{
    return orderDataSource.orderList(salesPersonId: salesPersonId, orderType: orderType,filterName:filtername,filterId:filterid,query:query);
  }

  Future<OrderListResponse> orderDetails({int? salesPersonId, int? orderId}){
    return orderDataSource.orderList(salesPersonId: salesPersonId!,orderId: orderId);
  }

  Future<OrderListResponse> orderListDelivery({ int? driverId,String? filterName,String? filterId}){
    return orderDataSource.orderList(driverId: driverId,filterName: filterName,filterId: filterId);
  }

  Future<OrderListResponse> allOrdersDelivery({int? driverId}){
    return orderDataSource.orderList(driverId: driverId);
  }

  Future<OrderListResponse> orderDetailsDelivery({int? driverId, int? orderId}){
    return orderDataSource.orderList(driverId: driverId,orderId: orderId);
  }




}