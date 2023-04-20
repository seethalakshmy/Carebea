import 'dart:async';

import 'package:admin_580_tech/domain/caregiver_list/care_givers_response.dart';
import 'package:auto_route/annotations.dart';
import 'package:dio/dio.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';



part 'api_client.g.dart';

@RestApi(baseUrl:"http://3.109.33.238/api/v1")
abstract class ApiClient {
  factory ApiClient(Dio dio) {
    dio.options = BaseOptions(
      receiveTimeout: 5000,
      connectTimeout: 5000,
    );

    dio.interceptors.add(PrettyDioLogger(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 200));

    return _ApiClient(dio);
  }

  @GET("/care-giver/all-registered-caregivers")
  Future<CaregiversResponse> getCareGivers(
    @Query("page") int page,
    @Query("limit") int limit,
  );

}


