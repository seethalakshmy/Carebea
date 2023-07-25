import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import 'model/service_request_response.dart';

abstract class IServiceRequestManagementRepo {
  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getPendingRequests(
      {required int page, required int limit, required String userId});

  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getCompletedRequests(
      {required int page, required int limit, required String userId});

  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getCancelledRequests(
      {required int page, required int limit, required String userId});

  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getUpcomingRequests(
      {required int page, required int limit, required String userId});

  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getOngoingRequests(
      {required int page, required int limit, required String userId});
}
