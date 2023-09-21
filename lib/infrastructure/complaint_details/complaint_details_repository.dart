import 'package:admin_580_tech/domain/complaint_details/models/complaint_details_response_model.dart';
import 'package:admin_580_tech/domain/complaint_details/models/get_service_response_model.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/on_boarding/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/complaint_details/i_complaint_details_repo.dart';
import '../../domain/core/api_client.dart';
import '../../domain/transaction_management/model/transaction_details_response.dart';

class ComplaintDetailsRepository implements IComplaintDetailsRepo {
  final ApiClient apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, ComplaintDetailsResponseModel>>
      getComplaintDetails({required String complaintId}) async {
    try {
      final response = await apiClient.getComplaintDetails(complaintId);
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
  Future<Either<ApiErrorHandler, CommonResponse>> updateComplaint(
      {required String adminId,
      required String complaintId,
      required int status,
      required String comment}) async {
    try {
      final response = await apiClient.updateComplaint(
          adminId, complaintId, status, comment);
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
  Future<Either<ApiErrorHandler, GetServiceResponseModel>> getService(
      {required String userId, required String serviceId}) async {
    try {
      final response = await apiClient.viewService(userId, serviceId);
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
  Future<Either<ApiErrorHandler, TransactionDetailsResponse>>
      getTransactionDetails(
          {required String token, required String transactionId}) async {
    try {
      final response =
          await apiClient.getTransactionDetails(token, transactionId);
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
