import 'dart:convert';

import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

import '../../../core/services/api_service.dart';
import 'dart:developer' as developer;

class ShopDataSource {
  ApiService apiService = Get.find();

  Future<ShopListResponse> shopList(
      {required int salesPersonId,
      int? shopId,
      String? filterName,
      int? filterId,
      String? name,
      String? phone,
      String? localArea}) async {
    var response = await apiService.post(
      'list-shops',
      {
        'sales_person_id': salesPersonId,
        'shop_id': shopId,
        'filter_name': filterName,
        'filter_id': filterId,
        'name': name,
        'phone': phone,
        'local_area': localArea
      },
    );
    ;
    if (response.statusCode == 200) {
      return ShopListResponse.fromJson(json.decode(response.body));
    } else {
      return ShopListResponse(shopListResult: ShopListResult(status: false));
    }
  }
}
