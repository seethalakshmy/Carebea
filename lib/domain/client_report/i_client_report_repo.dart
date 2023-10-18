import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

import 'model/client_report_response.dart';

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
}
