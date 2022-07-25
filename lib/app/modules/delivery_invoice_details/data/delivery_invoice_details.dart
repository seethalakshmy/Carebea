import 'dart:convert';

import 'package:carebea/app/core/services/api_service.dart';
import 'package:carebea/app/modules/delivery_invoice_details/data/models/invoice_details_response.dart';

class DeliveryInvoiceDetailsDataSource {
  final ApiService _apiService = ApiService();

  Future<InvoiceDetailsResponse> getInvoiceDetails(int orderId) async {
    var res = await _apiService.post("invoice-details", {"order_id": orderId});

    return InvoiceDetailsResponse.fromJson(json.decode(res.body));
  }

  Future generateInvoiceBill(int invoiceId) async {
    var res = await _apiService.post("generate-invoice", {"invoice_id": invoiceId});
  }
}
