import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

import 'model/client_report_response.dart';
import 'model/client_report_user_list_response.dart';
import 'model/inactive_count_response.dart';

abstract class IClientReportRepo {
  Future<Either<ApiErrorHandler, ClientReportResponse>> getClientReport(
      {required String userId,
      required String roleId,
      required String filterId,
      required String year,
      required String month,
      required String startDate,
      required String toDate,
      required String region});

  Future<Either<ApiErrorHandler, InactiveCountResponse>> getInactiveCountReport(
      {required String userId,
      required String roleId,
      required String filterId,
      required String year,
      required String month,
      required String startDate,
      required String toDate,
      required String region});

  Future<Either<ApiErrorHandler, ClientReportUserListResponse>> getUserList(
      {required String userId,
      required String roleId,
      required String year,
      required String month,
      required String startDate,
      required String toDate,
      required String region,
      required String page,
      required String limit});
}
