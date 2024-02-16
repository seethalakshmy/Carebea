import 'package:carebea/app/modules/near_by_shop/data/near_by_shop_datasource.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';

class NearByShopRepo {
  NearByShopDataSource nearByShopDataSource = NearByShopDataSource();

  Future<ShopListResponse> nearByShopList(
      {int? salesPersonId,
      int? deliveryPersonId,
      required double latitude,
      required double longitude,
      required int limit,
      required int pageNumber}) async {
    return nearByShopDataSource.nearByShopList(
        salesPersonId: salesPersonId,
        deliveryPersonId: deliveryPersonId,
        latitude: latitude,
        longitude: longitude,
        limit: limit,
        pageNumber: pageNumber);
  }
}
