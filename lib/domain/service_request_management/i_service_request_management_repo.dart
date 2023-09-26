import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/service_request_management/model/assign_caregiver_params.dart';
import 'package:admin_580_tech/domain/service_request_management/model/reschedule_params.dart';
import 'package:dartz/dartz.dart';

import '../caregiver_profile/model/caregiver_profile_response.dart';
import '../core/api_error_handler/api_error_handler.dart';
import '../transaction_management/model/get_filters_response.dart';
import 'model/reschedule_response.dart';
import 'model/service_request_response.dart';

abstract class IServiceRequestManagementRepo {
  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getPendingRequests(
      {required int page,
      required int limit,
      required String userId,
      required int filterId,
      required String searchTerm,
      required String serviceId,
      required String fromDate,
      required String toDate});

  Future<Either<ApiErrorHandler, CaregiverProfileResponse>> getCareGiverProfile(
      {required String userID, required String adminId});

  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getCompletedRequests(
      {required int page,
      required int limit,
      required String userId,
      required String searchTerm,
      required String serviceId,
      required String fromDate,
      required String toDate});

  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getCancelledRequests(
      {required int page,
      required int limit,
      required String userId,
      required String searchTerm,
      required String serviceId,
      required String fromDate,
      required String toDate});

  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getUpcomingRequests(
      {required int page,
      required int limit,
      required String userId,
      required String searchTerm,
      required String serviceId,
      required String fromDate,
      required String toDate});

  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getOngoingRequests(
      {required int page,
      required int limit,
      required String userId,
      required String searchTerm,
      required String serviceId,
      required String fromDate,
      required String toDate});

  Future<Either<ApiErrorHandler, RescheduleResponse>> rescheduleService(
      {required RescheduleParams rescheduleParams});

  Future<Either<ApiErrorHandler, CommonResponseUse>> assignCaregiver(
      {required AssignCareGiverParams assignCareGiverParams});

  Future<Either<ApiErrorHandler, CommonResponseUse>> cancelServiceRequest(
      {required String userId,
      required String serviceId,
      required String description});

  Future<Either<ApiErrorHandler, CommonResponseUse>> startService({
    required String userId,
    required String serviceId,
  });

  Future<Either<ApiErrorHandler, GetFiltersResponse>> getFilters();
}
