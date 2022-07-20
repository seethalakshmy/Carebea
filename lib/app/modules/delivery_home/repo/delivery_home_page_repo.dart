import 'package:carebea/app/modules/delivery_home/data/delivery_home_data_source.dart';
import 'package:carebea/app/modules/delivery_home/models/delivery_home_model.dart';







class DeliveryHomePageRepo{
  DeliveryHomePageDataSource deliveryHomePageDataSource = DeliveryHomePageDataSource();

  ///OrderListShopDeatilPage
  Future<DeliveryHomePageResponse> deliveryHomePageData(
      {required int salesPersonId})  {
    return deliveryHomePageDataSource.getHomePageData(salesPeronId: salesPersonId);
  }






}