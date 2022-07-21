import 'dart:convert';

import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

import '../../../core/services/api_service.dart';
import 'dart:developer' as developer;

import '../models/order_list_model.dart';

class OrderDataSource {
  ApiService apiService = ApiService();

  Future<OrderListResponse> orderList(
      {required int salesPersonId,
      String? orderType,
      int? orderId,
      int? shopId,
      String? filterId,
      String? filterName}) async {
    Map<String, dynamic> body = {
      'sales_person_id': salesPersonId,
    };
    if (shopId != null) {
      body.addAll({'shop_id': shopId});
    }
    if (orderType != null) {
      body.addAll({
        'order_type': orderType,
      });
    }
    if (filterName != null) {
      body.addAll({"filter_name": filterName, "filter_id": filterId!});
    }
    if (orderId != null) {
      body.addAll({'order_id': orderId});
    }
    if (orderType != null) {
      body.addAll({'order_type': orderType});
    }
    var response = await apiService.post('list-orders', body);
    developer.log(" url----${(Uri.parse('${apiService.baseUrl}list-orders'))}");

    print("listOrders response statusCode ${response.statusCode} ");
    print("listOrders response body  ${response.body}");
    print("listOrders response header ${apiService.getHeaders()}");
    if (response.statusCode == 200) {
      return OrderListResponse.fromJson(json.decode(response.body));
    } else {
      return OrderListResponse(orderListResult: OrderListResult(status: false));
    }
  }
}
