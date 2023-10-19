import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/client_report/i_client_report_repo.dart';
import '../../domain/client_report/model/client_report_response.dart';
import '../../domain/client_report/model/client_report_user_list_response.dart';
import '../../domain/client_report/model/inactive_count_response.dart';

class ClientReportRepository implements IClientReportRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, ClientReportResponse>> getClientReport(
      {required String userId,
      required String roleId,
      required String filterId,
      required String year,
      required String month,
      required String startDate,
      required String toDate,
      required String region}) async {
    try {
      final response = await _apiClient.getClientReport(
          userId, roleId, filterId, year, month, startDate, toDate, region);
      return Right(response);
    } on DioError catch (e) {
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
  Future<Either<ApiErrorHandler, InactiveCountResponse>> getInactiveCountReport(
      {required String userId,
      required String roleId,
      required String filterId,
      required String year,
      required String month,
      required String startDate,
      required String toDate,
      required String region}) async {
    try {
      final response = await _apiClient.getInactiveCountReport(
          userId, roleId, filterId, year, month, startDate, toDate, region);
      return Right(response);
    } on DioError catch (e) {
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
  Future<Either<ApiErrorHandler, ClientReportUserListResponse>> getUserList(
      {required String userId,
      required String roleId,
      required String year,
      required String month,
      required String startDate,
      required String toDate,
      required String region,
      required String page,
      required String limit}) async {
    try {
      final response = await _apiClient.getUserListResponse(
          userId, roleId, year, month, startDate, toDate, region, page, limit);
      return Right(response);
    } on DioError catch (e) {
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
}
