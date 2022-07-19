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

  Future<OrderListResponse> allOrdersList(int salesPersonId,String orderType)async{
    return orderDataSource.orderList(salesPersonId: salesPersonId, orderType: orderType);
  }




}