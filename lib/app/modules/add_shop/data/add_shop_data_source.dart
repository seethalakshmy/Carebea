import 'dart:async';
import 'dart:convert';

import 'package:carebea/app/modules/add_shop/models/add_shop_model.dart';
import 'package:carebea/app/modules/add_shop/models/list_routes_model.dart';
import 'package:carebea/app/modules/add_shop/models/list_state_model.dart';
import 'package:get/get.dart';

import '../../../core/services/api_service.dart';

import '../models/list_zone_model.dart';

class AddShopDataSource {
  ApiService apiService = Get.find();
  final ApiService _apiService = ApiService();

  Future<AddShopResponse> addShop({
    required int salesPersonId,
    required int branchId,
    required String lastName,
    required String name,
    required String phone,
    required int shopCategoryId,
    required int customerType,
    required String gst,
    required String localArea,
    required String district,
    required String zip,
    required int stateId,
    required int zoneId,
    required int routeId,
    required double latitude,
    required double longitude,
    required double openingBalance,
  }) async {
    var response = await _apiService.post('create-shop', {
      'branch_id': branchId,
      'sales_person_id': salesPersonId,
      'last_name': lastName,
      'name': name,
      'phone': phone,
      'local_area': localArea,
      'shop_categ_id': shopCategoryId,
      'customer_type': customerType,
      'gst': gst,
      'district': district,
      'zip': zip,
      'state_id': stateId,
      'zone_id': zoneId,
      'route_id': routeId,
      'latitude': latitude,
      'longitude': longitude,
      "opening_balance": openingBalance
    });



    if (response.statusCode == 200) {
      return AddShopResponse.fromJson(json.decode(response.body));
    } else {
      return AddShopResponse(addShopResult: AddShopResult(status: false));
    }
  }

  Future<AddShopResponse> updateShop({
    required int shopId,
    required int branchId,
    required int salesPersonId,
    required String lastName,
    required String name,
    required int shopCategoryId,
    required int customerType,
    required String gst,
    required String localArea,
    required String district,
    required String zip,
    required int stateId,
    required int zoneId,
    required int routeId,
    required double latitude,
    required double longitude,
    String? phone,
  }) async {
    var body = {
      'shop_id': shopId,
      'branch_id': branchId,
      'sales_person_id': salesPersonId,
      'last_name': lastName,
      'name': name,
      'local_area': localArea,
      'shop_categ_id': shopCategoryId,
      'customer_type': customerType,
      'gst': gst,
      'district': district,
      'zip': zip,
      'state_id': stateId,
      'zone_id': zoneId,
      'route_id': routeId,
      'latitude': latitude,
      'longitude': longitude
    };

    if (phone != null) {
      body.addAll({
        'phone': phone,
      });
    }

    var response = await apiService.post('update-shop', body);


    if (response.statusCode == 200) {
      return AddShopResponse.fromJson(json.decode(response.body));
    } else {
      return AddShopResponse(addShopResult: AddShopResult(status: false));
    }
  }

  ///List routes
  Future<RouteListResponse> routeList(
      {String? date, int? salesPersonId}) async {
    var response = await _apiService.post(
      "list-route",
      {'date': date, 'sales_person_id': salesPersonId},
    );

    if (response.statusCode == 200) {
      return RouteListResponse.fromJson(json.decode(response.body));
    }

    return RouteListResponse(
        routeListResult: RouteListResult.fromJson(json.decode(response.body)));
  }

  ///list states
  Future<StateListResponse> stateList() async {
    var response = await _apiService.post(
      "list-country-states",
      {},
    );

    if (response.statusCode == 200) {
      return StateListResponse.fromJson(json.decode(response.body));
    }

    return StateListResponse(
        stateListResult: StateListResult.fromJson(json.decode(response.body)));
  }

  ///list zones

  Future<ZoneListResponse> zoneList() async {
    var response = await _apiService.post(
      "list-zone",
      {},
    );

    if (response.statusCode == 200) {
      return ZoneListResponse.fromJson(json.decode(response.body));
    }

    return ZoneListResponse(
        zoneListResult: ZoneListResult.fromJson(json.decode(response.body)));
  }
}
