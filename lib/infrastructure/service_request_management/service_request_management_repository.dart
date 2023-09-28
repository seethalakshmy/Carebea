import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/service_request_management/i_service_request_management_repo.dart';
import 'package:admin_580_tech/domain/service_request_management/model/assign_caregiver_params.dart';
import 'package:admin_580_tech/domain/service_request_management/model/reschedule_params.dart';
import 'package:admin_580_tech/domain/service_request_management/model/service_request_response.dart';
import 'package:admin_580_tech/domain/service_request_management/model/service_status_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/caregiver_profile/model/caregiver_profile_response.dart';
import '../../domain/core/api_client.dart';
import '../../domain/service_request_management/model/reschedule_response.dart';
import '../../domain/service_request_management/model/service_request_list_response_model.dart';
import '../../domain/transaction_management/model/get_filters_response.dart';

class ServiceRequestManagementRepository
    implements IServiceRequestManagementRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getCancelledRequests({
    required int page,
    required int limit,
    required String userId,
    required String searchTerm,
    required String serviceId,
    required String fromDate,
    required String toDate,
  }) async {
    try {
      final response = await _apiClient.getCancelled(
        "",
        userId,
        page,
        limit,
        searchTerm,
        "",
        fromDate,
        toDate,
      );
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

  @override
  Future<Either<ApiErrorHandler, CaregiverProfileResponse>> getCareGiverProfile(
      {required String userID, required String adminId}) async {
    try {
      var res = await _apiClient.getCareGiverProfile("", userID, adminId);
      return Right(res);
    } on DioError catch (e) {
      CustomLog.log("CareGiverDetailRepository: ${e.message}");
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
  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getCompletedRequests({
    required int page,
    required int limit,
    required String userId,
    required String searchTerm,
    required String serviceId,
    required String fromDate,
    required String toDate,
  }) async {
    try {
      final response = await _apiClient.getCompletedRequests(
        "",
        userId,
        page,
        limit,
        searchTerm,
        "",
        fromDate,
        toDate,
      );
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

  @override
  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getOngoingRequests({
    required int page,
    required int limit,
    required String userId,
    required String searchTerm,
    required String serviceId,
    required String fromDate,
    required String toDate,
  }) async {
    try {
      final response = await _apiClient.getOngoingRequests(
        "",
        userId,
        page,
        limit,
        searchTerm,
        "",
        fromDate,
        toDate,
      );
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

  @override
  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getPendingRequests({
    required int page,
    required int limit,
    required String userId,
    required int filterId,
    required String searchTerm,
    required String serviceId,
    required String fromDate,
    required String toDate,
  }) async {
    try {
      final response = await _apiClient.getPendingRequests(
        "",
        userId,
        page,
        limit,
        filterId,
        searchTerm,
        "",
        fromDate,
        toDate,
      );
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

  @override
  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getUpcomingRequests({
    required int page,
    required int limit,
    required String userId,
    required String searchTerm,
    required String serviceId,
    required String fromDate,
    required String toDate,
  }) async {
    try {
      final response = await _apiClient.getUpcomingRequests(
        "",
        userId,
        page,
        limit,
        searchTerm,
        "",
        fromDate,
        toDate,
      );
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

  @override
  Future<Either<ApiErrorHandler, RescheduleResponse>> rescheduleService(
      {required RescheduleParams rescheduleParams}) async {
    try {
      final response = await _apiClient.serviceReschedule(
        "",
        rescheduleParams,
      );
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

  @override
  Future<Either<ApiErrorHandler, CommonResponseUse>> assignCaregiver(
      {required AssignCareGiverParams assignCareGiverParams}) async {
    try {
      final response = await _apiClient.assignCareGiver(
        "",
        assignCareGiverParams,
      );
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

  @override
  Future<Either<ApiErrorHandler, CommonResponseUse>> cancelServiceRequest(
      {required String userId,
      required String serviceId,
      required String description}) async {
    try {
      final response = await _apiClient.cancelServiceRequest(
          "", userId, serviceId, description);
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

  @override
  Future<Either<ApiErrorHandler, CommonResponseUse>> startService({
    required String userId,
    required String serviceId,
  }) async {
    try {
      final response = await _apiClient.startService(
        "",
        userId,
        serviceId,
      );
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

  @override
  Future<Either<ApiErrorHandler, GetFiltersResponse>> getFilters() async {
    try {
      final response = await _apiClient.getFilters();
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

  @override
  Future<Either<ApiErrorHandler, ServiceRequestListResponseModel>>
      getServiceRequests(
          {required String page,
          required int limit,
          required String userId,
          required String? serviceId,
          String? searchTerm,
          int? statusFilterId,
          String? fromDate,
          String? toDate,
          int? dateFilterId}) async {
    try {
      final response = await _apiClient.getServiceRequests(
        "",
        userId,
        serviceId,
        page,
        limit,
        searchTerm,
        statusFilterId,
        fromDate,
        toDate,
        dateFilterId,
      );
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

  @override
  Future<Either<ApiErrorHandler, ServiceStatusResponseModel>>
      getServiceStatus() async {
    try {
      final response = await _apiClient.getServiceStatus();
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
