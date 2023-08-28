import 'package:admin_580_tech/domain/dashboard/model/alert_response.dart';
import 'package:admin_580_tech/domain/dashboard/model/dashboard_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/core/api_client.dart';
import '../../domain/core/api_error_handler/api_error_handler.dart';
import '../../domain/dashboard/model/i_dashboard_repo.dart';

class DashboardRepository implements IDashboardRepo {
  ApiClient apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, AlertResponse>> getAlert(
      {required String userID}) async {
    try {
      final response = await apiClient.getAlerts(userID);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("dashboard alerts: ${e.message}");
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
  Future<Either<ApiErrorHandler, DashboardResponse>> getDashboardData(
      {required String userId,
      required String year,
      String? fromDate,
      String? toDate}) async {
    try {
      final response = await apiClient.getDashboardData(
          '', userId, year, fromDate ?? '', toDate ?? '');
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("dashboard data: ${e.message}");
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
