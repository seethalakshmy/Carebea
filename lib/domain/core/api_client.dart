import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:dio/dio.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';

import '../../core/config/environment.dart';
import '../caregivers/care_givers_response.dart';

part 'api_client.g.dart';

@RestApi()
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

    return _ApiClient(dio, baseUrl: Environment().config?.apiHost);
  }

  @GET("/care-giver/all-registered-caregivers")
  Future<CaregiversResponse> getCareGivers(
    @Header("Authorization") String token,
    @Query("page") int page,
    @Query("limit") int limit,
  );
}
