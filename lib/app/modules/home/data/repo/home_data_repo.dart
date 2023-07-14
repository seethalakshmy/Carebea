import 'package:carebea/app/modules/home/data/home_data_source.dart';
import 'package:carebea/app/modules/home/data/models/home_data_model.dart';
import 'package:carebea/app/modules/home/data/models/reports_data.dart';
import 'package:carebea/app/modules/shops/data/order_list_datasource.dart';
import 'package:carebea/app/modules/shops/data/shop_list_datasource.dart';
import 'package:carebea/app/utils/shared_prefs.dart';

import '../../../shops/models/order_list_model.dart';
import '../../../shops/models/shop_model.dart';

class HomeDataRepository {
  final HomeDataSource _dataSource = HomeDataSource();
  final ShopDataSource _shopDataSource = ShopDataSource();
  final OrderDataSource _orderDataSource = OrderDataSource();

  Future<HomeData> getHomePageData({required int userId}) => _dataSource.getHomePageData(userId);

  ///HomePageSearch
  Future<ShopListResponse> homeShopSearch({required int salesPersonId, Map<String, dynamic>? query, required int pageNumber, required int pageSize}) async {
    return _shopDataSource.shopList(salesPersonId: salesPersonId, query: query, pageNumber: pageNumber, pageSize: pageSize);
  }

  ///HomePageOrderSearch
  Future<OrderListResponse> homeOrderSearch({required int salesPersonId, String? query, String? orderType, int? pageNumber, int? pageSize}) async {
    return _orderDataSource.orderList(salesPersonId: salesPersonId, query: query, orderType: orderType, pageNumber: pageNumber, pageSize: pageSize);
  }

  Future<ReportsData> getReports() => _dataSource.getReports(SharedPrefs.getUserId()!);
}
