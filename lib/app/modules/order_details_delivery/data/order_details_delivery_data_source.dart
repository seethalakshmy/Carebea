import 'dart:convert';

import 'package:carebea/app/core/services/api_service.dart';
import 'package:carebea/app/modules/order_details_delivery/data/models/update_order_status_response.dart';

class OrderDetailsDeliveryDataSource {
  final ApiService _apiService = ApiService();

  Future<UpdateOrderStatusResponse> confirmOrder(
      int salesPersonId, int orderId, String? collectedAmount, String paymentMethod) async {
    Map<String, dynamic> body = {
      "status": "Complete",
      "payment_method": paymentMethod,
      "sales_person_id": salesPersonId,
      "order_id": orderId,
    };
    if (paymentMethod == "CHEQ") {
      body.addAll({
        "cheq_no": collectedAmount,
      });
    } else {
      body.addAll({
        "collected_amount": collectedAmount,
      });
    }
    var response = await _apiService.post("update-order-status", body);

    return UpdateOrderStatusResponse.fromJson(json.decode(response.body));
  }
}
