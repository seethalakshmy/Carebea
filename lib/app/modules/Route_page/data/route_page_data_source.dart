import 'dart:convert';

import 'package:carebea/app/core/services/api_service.dart';
import 'package:carebea/app/modules/Route_page/data/model/route_page_response.dart';

class RoutePageDataSource {
  final ApiService _apiService = ApiService();

  Future<RouteByDateResponse> fetchRouteByDate(int userId, String date) async {
    var res = await _apiService.post("route-by-plan", {"sales_person_id": userId, "date": date});

    if (res.statusCode == 200) {
      return RouteByDateResponse.fromJson(json.decode(res.body));
    }

    return RouteByDateResponse(result: RouteByDateResult(status: false));
  }
}
