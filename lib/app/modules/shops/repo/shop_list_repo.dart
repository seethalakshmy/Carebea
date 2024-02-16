import 'package:carebea/app/modules/shops/data/shop_list_datasource.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:flutter/cupertino.dart';

class ShopListRepo {
  ShopDataSource shopDataSource = ShopDataSource();

  ///ShopList
  Future<ShopListResponse> shopList(
      {int? salesPersonId,
      required int pageNumber,
      required int pageSize,
      int? deliveryPersonId}) async {
    return shopDataSource.shopList(
        salesPersonId: salesPersonId,
        deliveryPersonId: deliveryPersonId,
        pageNumber: pageNumber,
        pageSize: pageSize);
  }

  ///ShopDetails
  Future<ShopListResponse> shopDetails(
    int shopId,
  ) async {
    return shopDataSource.shopList(shopId: shopId, pageNumber: 0, pageSize: 1);
  }

  ///ShopFilter
  Future<ShopListResponse> shopFilter(
      int salesPersonId, String filterName, int filterId,
      {required int pageNumber, required int pageSize}) async {
    return shopDataSource.shopList(
        salesPersonId: salesPersonId,
        filterId: filterId,
        filterName: filterName,
        pageNumber: pageNumber,
        pageSize: pageSize);
  }

  ///ShopSearch
  Future<ShopListResponse> shopSearch(
      {int? salesPersonId,
      int? deliveryPersonId,
      Map<String, dynamic>? query,
      required int pageNumber,
      required int pageSize}) async {
    return shopDataSource.shopList(
        salesPersonId: salesPersonId,
        deliveryPersonId: deliveryPersonId,
        query: query,
        pageNumber: pageNumber,
        pageSize: pageSize);
  }
}
