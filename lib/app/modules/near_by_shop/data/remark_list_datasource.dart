import 'dart:convert';

import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

import '../../../core/services/api_service.dart';
import 'dart:developer' as developer;

import '../../shops/models/order_list_model.dart';
import '../models/remark_model.dart';
import '../models/remark_submit_response.dart';

class RemarkListDataSource {
  ApiService apiService = ApiService();

  Future<RemarkModel> remarkList() async {
    Map<String, dynamic> body = {};

    var response = await apiService.post('list-payment_comments', body);

    if (response.statusCode == 200) {
      return RemarkModel.fromJson(json.decode(response.body));
    } else {
      return RemarkModel(result: RemarkListResult(status: false));
    }
  }

  Future<RemarkSubmitResponse> remarkSubmission(
      {required int userId,
      required int commentId,
      required int shopId,
      required double latitude,
      required double longitude}) async {
    Map<String, dynamic> body = {
      "user_id": userId,
      "comment_id": commentId,
      "shop_id": shopId,
      "latitude": latitude,
      "longitude": longitude
    };

    var response = await apiService.post('create-payment_followups', body);

    if (response.statusCode == 200) {
      return RemarkSubmitResponse.fromJson(json.decode(response.body));
    } else {
      return RemarkSubmitResponse(result: RemarkSubmitResult(status: false));
    }
  }
}
