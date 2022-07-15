import 'package:carebea/app/modules/add_shop/data/add_shop_data_source.dart';
import 'package:carebea/app/modules/add_shop/models/add_shop_model.dart';
import 'package:carebea/app/modules/shops/data/shop_list_datasource.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:flutter/cupertino.dart';





class AddShopRepo{
  AddShopDataSource addShopDataSource = AddShopDataSource();

  Future<AddShopResponse> addShop(
      int salesPersonId,
      String name,
    String phone,
    int shopCategoryId,
   int customerType,
   String gst,
    String localArea,
     String district,
    String zip,
    int stateId,
  int zoneId,
   int routeId,
      double latitude,
      double longitude) async{
    return addShopDataSource.addShop(
        salesPersonId: salesPersonId,
        name: name,
        phone: phone,
        shopCategoryId: shopCategoryId,
        customerType: customerType,
        gst: gst,
        localArea: localArea,
        district: district,
        zip: zip,
        stateId: stateId,
        zoneId: zoneId,
        routeId: routeId, longitude: longitude, latitude: latitude);
  }


}