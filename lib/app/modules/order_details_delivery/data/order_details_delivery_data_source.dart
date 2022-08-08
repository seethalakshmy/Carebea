import 'dart:convert';

import 'package:carebea/app/core/services/api_service.dart';
import 'package:carebea/app/modules/order_details_delivery/data/models/update_order_status_response.dart';

class OrderDetailsDeliveryDataSource {
  final ApiService _apiService = ApiService();

  Future<UpdateOrderStatusResponse> confirmOrder(
      int? salesPersonId,int? driverId, int orderId, String collectedAmount, String paymentMethod, String? cheqNo) async {
    Map<String, dynamic> body = {
      "status": "Complete",
      "payment_method": paymentMethod,
      "order_id": orderId,
      "collected_amount": double.parse(collectedAmount),
    };
    if(salesPersonId != null){
      body.addAll({'sales_person_id':salesPersonId});
    }
    if(driverId != null){
      body.addAll({'driver_id':driverId.toString()});
    }    if (paymentMethod == "CHEQ") {
      body.addAll({
        "cheque_no": cheqNo,
      });
    }
    var response = await _apiService.post("update-order-status", body);

    return UpdateOrderStatusResponse.fromJson(json.decode(response.body));
  }
}
