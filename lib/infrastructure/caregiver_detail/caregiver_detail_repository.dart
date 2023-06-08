import 'dart:convert';

import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/domain/caregiver_detail/i_caregivers_detail_repo.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_detail_response.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';


class CareGiverDetailRepository implements ICareGiverDetailRepo {
  final ApiClient _apiClient = ApiClient(Dio());

  @override
  Future<Either<ApiErrorHandler, CareGiverDetailResponse>> getCareGiverDetail(
      {required String userID}) async {
    try {
      var res = await rootBundle
          .loadString("assets/sample/care_giver_detail_response.json");
      var response = CareGiverDetailResponse.fromJson(jsonDecode(res));
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException") ||
          e.message.contains("XMLHttpRequest")) {
        CustomLog.log("reached here..");
        return const Left(ClientFailure(
            error: Strings.noInternetConnection, isClientError: true));
      } else {
        return const Left(ServerFailure(
            error: Strings.somethingWentWrong, isClientError: false));
      }
    }
  }
}
