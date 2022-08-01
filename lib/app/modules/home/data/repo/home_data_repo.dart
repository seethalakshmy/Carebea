import 'package:carebea/app/modules/home/data/home_data_source.dart';
import 'package:carebea/app/modules/home/data/models/home_data_model.dart';
import 'package:carebea/app/modules/shops/data/shop_list_datasource.dart';

import '../../../shops/models/shop_model.dart';

class HomeDataRepository {
  final HomeDataSource _dataSource = HomeDataSource();
  final ShopDataSource _shopDataSource = ShopDataSource();

  Future<HomeData> getHomePageData({required int userId}) => _dataSource.getHomePageData(userId);

///HomePageSearch
  Future<ShopListResponse> homeShopSearch({required int salesPersonId,Map<String,dynamic>? query})async{
    return _shopDataSource.shopList(salesPersonId:salesPersonId,query: query);
  }

}
