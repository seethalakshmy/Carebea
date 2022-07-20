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

  Future<OrderListResponse> allOrdersList(int salesPersonId,String orderType,{String? filtername,String? filterid})async{
    return orderDataSource.orderList(salesPersonId: salesPersonId, orderType: orderType,filterName:filtername,filterId:filterid);
  }

  Future<OrderListResponse> orderDetails({int? salesPersonId, int? orderId}){
    return orderDataSource.orderList(salesPersonId: salesPersonId!,orderId: orderId);
  }




}