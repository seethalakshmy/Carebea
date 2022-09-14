import 'dart:convert';

import 'package:carebea/app/modules/shops/models/payment_model.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

import '../../../core/services/api_service.dart';
import 'dart:developer' as developer;

import '../models/order_list_model.dart';

class PaymentDataSource {
  ApiService apiService = ApiService();

  Future<PaymentResponse> makePayment(
      {required int salesPersonId,
      required int shopId,
      required double collectedAmount,
      required String paymentType,
      String? chequeNo}) async {
    Map<String, dynamic> body = {
      "sales_person_id": salesPersonId,
      "shop_id": shopId,
      "collected_amount": collectedAmount,
      "payment_type": paymentType
    };
    if (chequeNo != null) {
      body.addAll({'cheque_no': chequeNo});
    }

    var response = await apiService.post('credit-payment', body);
    // developer.log(" url----${(Uri.parse('${apiService.baseUrl}list-orders'))}");
    //
    // print("listOrders response statusCode ${response.statusCode} ");
    // print("listOrders response body  ${response.body}");
    // print("listOrders response header ${apiService.getHeaders()}");
    if (response.statusCode == 200) {
      return PaymentResponse.fromJson(json.decode(response.body));
    } else {
      return PaymentResponse(paymentResult: PaymentResult(status: false));
    }
  }
}
