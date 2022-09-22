import 'package:carebea/app/modules/shops/data/shop_list_datasource.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:flutter/cupertino.dart';

class ShopListRepo {
  ShopDataSource shopDataSource = ShopDataSource();

  ///ShopList
  Future<ShopListResponse> shopList(int salesPersonId) async {
    return shopDataSource.shopList(salesPersonId: salesPersonId);
  }

  ///ShopDetails
  Future<ShopListResponse> shopDetails(shopId) async {
    return shopDataSource.shopList(shopId: shopId);
  }

  ///ShopFilter
  Future<ShopListResponse> shopFilter(int salesPersonId, String filterName, int filterId) async {
    return shopDataSource.shopList(salesPersonId: salesPersonId, filterId: filterId, filterName: filterName);
  }

  ///ShopSearch
  Future<ShopListResponse> shopSearch({required int salesPersonId, Map<String, dynamic>? query}) async {
    return shopDataSource.shopList(salesPersonId: salesPersonId, query: query);
  }
}
