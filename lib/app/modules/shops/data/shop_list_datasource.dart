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
      {required int salesPersonId, int? shopId, String? filterName, int? filterId, Map<String, dynamic>? query}) async {
    Map<String, dynamic> body = {
      // 'sales_person_id': salesPersonId,
    };
    if (shopId != null) {
      body.addAll({'shop_id': shopId});
    }
    if (filterName != null) {
      body.addAll({'filter_name': filterName, 'filter_id': filterId});
    }
    if ((query ?? {}).isNotEmpty) {
      body.addAll(query!);
    }
    var response = await apiService.post('list-shops', body);
    ;
    if (response.statusCode == 200) {
      return ShopListResponse.fromJson(json.decode(response.body));
    } else {
      return ShopListResponse(shopListResult: ShopListResult(status: false));
    }
  }
}
