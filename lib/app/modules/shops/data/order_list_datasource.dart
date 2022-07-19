import 'dart:convert';

import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

import '../../../core/services/api_service.dart';
import 'dart:developer' as developer;

import '../models/order_list_model.dart';



class OrderDataSource {
  ApiService apiService = Get.find();







  Future<OrderListResponse> orderList(
      {required int salesPersonId,required String orderType}) async {
    var response = await http.post(Uri.parse('${apiService.baseUrl}list-orders'),

        body:json.encode( {'sales_person_id':salesPersonId,'order_type':orderType}),
        headers: apiService.getHeaders());
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
