import 'dart:convert';

import 'package:carebea/app/modules/add_shop/models/add_shop_model.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

import '../../../core/services/api_service.dart';
import 'dart:developer' as developer;



class AddShopDataSource {
  ApiService apiService = Get.find();

  Future<AddShopResponse> addShop({
    required int salesPersonId,
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
    required double longitude

  }) async {
    var response = await http.post(Uri.parse('${apiService.baseUrl}create-shop'),

        body:json.encode( {
          'sales_person_id':salesPersonId,
          'name':name,
          'phone':phone,
          'local_area':localArea,
          'shop_categ_id':shopCategoryId,
          'customer_type':customerType,
          'gst':gst,
          'district':district,
          'zip':zip,
          'state_id':stateId,
          'zone_id':zoneId,
          'route_id':routeId,
          'latitude':latitude,
          'longitude':longitude
        }),
        headers: apiService.getHeaders());
    developer.log(" url----${(Uri.parse('${apiService.baseUrl}create-shop'))}");

    print("createShops response statusCode ${response.statusCode} ");
    print("createShops response body  ${response.body}");
    print("createShops response header ${apiService.getHeaders()}");
    if (response.statusCode == 200) {
      return AddShopResponse.fromJson(json.decode(response.body));
    } else {
      return AddShopResponse(addShopResult: AddShopResult(status: false));
    }
  }

  Future<AddShopResponse> updateShop({
    required int shopId,
    required int salesPersonId,
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
    required double longitude

  }) async {
    var response = await http.post(Uri.parse('${apiService.baseUrl}update-shop'),

        body:json.encode( {
          'shop_id':shopId,
          'sales_person_id':salesPersonId,
          'name':name,
          'phone':phone,
          'local_area':localArea,
          'shop_categ_id':shopCategoryId,
          'customer_type':customerType,
          'gst':gst,
          'district':district,
          'zip':zip,
          'state_id':stateId,
          'zone_id':zoneId,
          'route_id':routeId,
          'latitude':latitude,
          'longitude':longitude
        }),
        headers: apiService.getHeaders());
    developer.log(" url----${(Uri.parse('${apiService.baseUrl}update-shop'))}");

    print("updateShops response statusCode ${response.statusCode} ");
    print("updateShops response body  ${response.body}");
    print("updateShops response header ${apiService.getHeaders()}");
    if (response.statusCode == 200) {
      return AddShopResponse.fromJson(json.decode(response.body));
    } else {
      return AddShopResponse(addShopResult: AddShopResult(status: false));
    }
  }


}