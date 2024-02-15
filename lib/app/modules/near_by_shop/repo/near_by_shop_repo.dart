import 'package:carebea/app/modules/near_by_shop/data/near_by_shop_datasource.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';

class NearByShopRepo {
  NearByShopDataSource nearByShopDataSource = NearByShopDataSource();

  Future<ShopListResponse> nearByShopList(
      {required int salesPersonId,
      required double latitude,
      required double longitude,
      required int limit,
      required int pageNumber}) async {
    return nearByShopDataSource.nearByShopList(
        salesPersonId: salesPersonId,
        latitude: latitude,
        longitude: longitude,
        limit: limit,
        pageNumber: pageNumber);
  }
}
