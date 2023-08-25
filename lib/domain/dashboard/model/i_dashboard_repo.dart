import 'package:admin_580_tech/domain/dashboard/model/alert_response.dart';
import 'package:dartz/dartz.dart';

import '../../core/api_error_handler/api_error_handler.dart';
import 'dashboard_response.dart';

abstract class IDashboardRepo {
  Future<Either<ApiErrorHandler, AlertResponse>> getAlert(
      {required String userID});

  Future<Either<ApiErrorHandler, DashboardResponse>> getDashboardData(
      {required String userId,
      required String year,
      String? fromDate,
      String? toDate});
}
