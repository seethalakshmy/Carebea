import 'dart:convert';

import 'package:carebea/app/core/services/api_service.dart';
import 'package:carebea/app/modules/delivery_home/models/delivery_home_model.dart';


class DeliveryHomePageDataSource {
  final ApiService _apiService = ApiService();


  Future<DeliveryHomePageResponse> getHomePageData({required int salesPeronId}) async {
    var response = await _apiService.post(
      "get-homepage-data-delivery",
      {"sales_person_id":salesPeronId},
    );
    print('inside datasource');

    if (response.statusCode == 200) {
      return DeliveryHomePageResponse.fromJson(json.decode(response.body));
    }

    return DeliveryHomePageResponse(deliveryHomePageResult: DeliveryHomePageResult.fromJson(json.decode(response.body)));
  }


}
