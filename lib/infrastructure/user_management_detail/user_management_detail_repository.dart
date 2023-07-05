import 'dart:convert';

import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/user_management_detail/i_user_management_detail_repo.dart';
import 'package:admin_580_tech/domain/user_management_detail/model/user_detail_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

import '../../core/enum.dart';

class UserManagementDetailRepository implements IUserDetailRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, UserDetailResponse>> getUserDetail(
      {required String userID}) async {
    try {
      var res = await rootBundle
          .loadString("assets/sample/user_detail_response.json");
      var response = UserDetailResponse.fromJson(jsonDecode(res));

      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }
}
