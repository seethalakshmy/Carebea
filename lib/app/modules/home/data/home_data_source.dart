import 'dart:convert';

import 'package:carebea/app/core/services/api_service.dart';
import 'package:carebea/app/modules/home/data/models/home_data_model.dart';
import 'package:carebea/app/modules/home/data/models/reports_data.dart';

class HomeDataSource {
  final ApiService _apiService = ApiService();

  Future<HomeData> getHomePageData(int userId) async {
    var response = await _apiService.post("get-homepage-data-sr", {"sales_person_id": userId});

    return HomeData.fromJson(json.decode(response.body));
  }

  Future<ReportsData> getReports(int userId) async {
    var response = await _apiService.post("sale-team-report", {"sales_person_id": userId});

    return ReportsData.fromJson(json.decode(response.body));
  }
}
