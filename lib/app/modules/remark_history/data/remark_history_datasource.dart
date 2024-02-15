import 'dart:convert';

import 'package:carebea/app/modules/remark_history/models/remark_history_response.dart';

import '../../../core/services/api_service.dart';

class RemarkHistoryDataSource {
  ApiService apiService = ApiService();

  Future<RemarkHistoryResponse> remarkHistory(
      {required int shopId,
      required int limit,
      required int pageNumber}) async {
    Map<String, dynamic> body = {
      "shop_id": shopId,
      "limit": limit,
      "page_number": pageNumber
    };

    var response = await apiService.post('view-payment_followups', body);

    if (response.statusCode == 200) {
      return RemarkHistoryResponse.fromJson(json.decode(response.body));
    } else {
      return RemarkHistoryResponse(result: RemarkHistoryResult(status: false));
    }
  }
}
