import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/service_request_management/i_service_request_management_repo.dart';
import 'package:admin_580_tech/domain/service_request_management/model/service_request_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/core/api_client.dart';

class ServiceRequestManagementRepository
    implements IServiceRequestManagementRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getCancelledRequests(
      {required int page,
      required int limit,
      required String userId,
      required int filterId}) async {
    try {
      final response =
          await _apiClient.getCancelled("", userId, page, limit, filterId);
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
  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getCompletedRequests(
      {required int page,
      required int limit,
      required String userId,
      required int filterId}) async {
    try {
      final response = await _apiClient.getCompletedRequests(
          "", userId, page, limit, filterId);
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
  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getOngoingRequests(
      {required int page,
      required int limit,
      required String userId,
      required int filterId}) async {
    try {
      final response = await _apiClient.getOngoingRequests(
          "", userId, page, limit, filterId);
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
  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getPendingRequests(
      {required int page,
      required int limit,
      required String userId,
      required int filterId}) async {
    try {
      final response = await _apiClient.getPendingRequests(
          "", userId, page, limit, filterId);
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
  Future<Either<ApiErrorHandler, ServiceRequestResponse>> getUpcomingRequests(
      {required int page,
      required int limit,
      required String userId,
      required int filterId}) async {
    try {
      final response = await _apiClient.getUpcomingRequests(
          "", userId, page, limit, filterId);
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
