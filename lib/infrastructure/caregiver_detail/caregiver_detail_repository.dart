import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/caregiver_detail/i_caregivers_detail_repo.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_detail_response.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_earning_list_response.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_service_list_response.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_service_request_list_response.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class CareGiverDetailRepository implements ICareGiverDetailRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, CareGiverDetailResponse>> getCareGiverDetail(
      {required String userID, required String adminId}) async {
    try {
      // var res = await rootBundle
      //     .loadString("assets/sample/care_giver_detail_response.json");
      var res = await _apiClient.getCareGiverDetail("", userID, adminId);
      // var response = CareGiverDetailResponse.fromJson(jsonDecode(res));
      return Right(res);
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

  @override
  Future<Either<ApiErrorHandler, CareGiverEarningsListResponse>>
      getCareGiverEarningsList(
          {required String userID,
          required int page,
          required int limit,
          required String adminId}) async {
    try {
      var res =
          await _apiClient.getCareGiverEarningList("", userID, page, limit);
      return Right(res);
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

  @override
  Future<Either<ApiErrorHandler, CareGiverServiceListResponse>>
      getCareGiverServiceList(
          {required String userID,
          required int page,
          required int limit,
          required String adminId}) async {
    try {
      var res =
          await _apiClient.getCareGiverServiceList("", userID, page, limit);
      return Right(res);
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

  @override
  Future<Either<ApiErrorHandler, CareGiverServiceRequestListResponse>>
      getCareGiverServiceRequestedList(
          {required String userID,
          required int page,
          required int limit}) async {
    try {
      var res =
          await _apiClient.getCareGiverRequestList("", userID, page, limit);
      return Right(res);
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
