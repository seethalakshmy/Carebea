import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/verify_response.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/caregivers/i_caregivers_repo.dart';
import '../../domain/caregivers/model/caregiver_response.dart';

class CareGiversRepository implements ICareGiverRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, CareGiverResponse>> getCareGivers(
      {required String userID,
      required String adminId,
      required int page,
      required int limit,
      required int type,
      String? searchTerm,
      int? filterId}) async {
    try {
      final response = await _apiClient.getCareGivers(
          "", userID, page, limit, type, searchTerm, filterId);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
          error: AppString.noInternetConnection.val,
          isClientError: true,
        ));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, VerifyResponse>> careGiverActiveOrInactive(
      {required String userID,
      required bool status,
      required String adminId}) async {
    try {
      final response = await _apiClient.careGiverActiveOrInactive(
          "", userID, adminId, status);
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
