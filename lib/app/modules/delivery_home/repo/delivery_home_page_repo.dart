import 'package:carebea/app/modules/delivery_home/data/delivery_home_data_source.dart';
import 'package:carebea/app/modules/delivery_home/models/delivery_home_model.dart';

import '../../shops/data/order_list_datasource.dart';
import '../../shops/models/order_list_model.dart';







class DeliveryHomePageRepo{
  DeliveryHomePageDataSource deliveryHomePageDataSource = DeliveryHomePageDataSource();
  final OrderDataSource _orderDataSource = OrderDataSource();


  ///OrderListShopDeatilPage
  Future<DeliveryHomePageResponse> deliveryHomePageData(
      {required int salesPersonId})  {
    return deliveryHomePageDataSource.getHomePageData(salesPeronId: salesPersonId);
  }

  ///DeliveryHomePageOrderSearch
  Future<OrderListResponse> homeOrderSearch({required int salesPersonId,String? query})async{
    return _orderDataSource.orderList(salesPersonId: salesPersonId,query: query);
  }






}