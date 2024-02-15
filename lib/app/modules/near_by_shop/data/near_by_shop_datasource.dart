import 'dart:convert';

import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

import '../../../core/services/api_service.dart';
import 'dart:developer' as developer;

class NearByShopDataSource {
  ApiService apiService = Get.find();

  Future<ShopListResponse> nearByShopList(
      {required int salesPersonId,
      required double latitude,
      required double longitude,
      required int limit,
      required int pageNumber}) async {
    Map<String, dynamic> body = {
      "sales_person_id": salesPersonId,
      "latitude": latitude,
      "longitude": longitude,
      "limit": limit,
      "page_number": pageNumber
    };

    var response = await apiService.post('list-shops-location-wise', body);

    if (response.statusCode == 200) {
      return ShopListResponse.fromJson(json.decode(response.body));
    } else {
      return ShopListResponse(shopListResult: ShopListResult(status: false));
    }
  }
}
