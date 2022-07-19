import 'package:carebea/app/modules/shops/data/shop_list_datasource.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:flutter/cupertino.dart';





class ShopListRepo{
  ShopDataSource shopDataSource = ShopDataSource();

///ShopList
  Future<ShopListResponse> shopList(int salesPersonId) async {
    return shopDataSource.shopList( salesPersonId: salesPersonId);
  }
///ShopDetails
  Future<ShopListResponse> shopDetails(int salesPersonId,int shopId) async{
    return shopDataSource.shopList(salesPersonId:salesPersonId,shopId: shopId);
  }
  ///ShopFilter
Future<ShopListResponse> shopFilter(int salesPersonId,String filterName,int filterId)async{
    return shopDataSource.shopList(salesPersonId: salesPersonId,filterId: filterId,filterName: filterName);
}
///ShopSearch
Future<ShopListResponse> shopSearch(int salesPersonId,String name,String phone,String localArea)async{
    return shopDataSource.shopList(salesPersonId:salesPersonId,name: name,phone: phone,localArea: localArea);
}



}