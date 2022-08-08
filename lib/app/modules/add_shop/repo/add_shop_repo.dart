import 'dart:async';

import 'package:carebea/app/modules/add_shop/data/add_shop_data_source.dart';
import 'package:carebea/app/modules/add_shop/models/add_shop_model.dart';
import 'package:carebea/app/modules/shops/data/shop_list_datasource.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:flutter/cupertino.dart';

import '../models/list_routes_model.dart';
import '../models/list_state_model.dart';
import '../models/list_zone_model.dart';

class AddShopRepo {
  AddShopDataSource addShopDataSource = AddShopDataSource();

  Future<AddShopResponse> addShop(
    int salesPersonId,
    String name,
    String lastName,
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
    double longitude,
    double openingBalance,
  ) async {
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
      routeId: routeId,
      longitude: longitude,
      latitude: latitude,
      lastName: lastName,
      openingBalance: openingBalance,
    );
  }

  Future<AddShopResponse> updateShop(
    int shopId,
    int salesPersonId,
    String name,
    String lastName,
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
    double longitude, {
    String? phone,
  }) async {
    return addShopDataSource.updateShop(
        shopId: shopId,
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
        routeId: routeId,
        latitude: latitude,
        longitude: longitude,
        lastName: lastName);
  }

  Future<RouteListResponse> routeList() {
    return addShopDataSource.routeList();
  }

  Future<StateListResponse> stateList() {
    return addShopDataSource.stateList();
  }

  Future<RouteListResponse> routeListCalender({String? date}) {
    return addShopDataSource.routeList(date: date);
  }

  Future<ZoneListResponse> zoneList() {
    return addShopDataSource.zoneList();
  }
}
