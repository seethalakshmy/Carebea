import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/caregiver_verification/i_caregiver_verification_repo.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/caregiver_verification_response.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/reject_params.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/verify_response.dart';
import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class CareGiverVerificationRepository implements ICareGiverVerificationRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, CaregiverVerificationResponse>>
      getCareGiverVerificationData({
    required String userID,
  }) async {
    try {
      final response = await _apiClient.getCareGiverVerificationData(
        "",
        userID,
        SharedPreffUtil().getUserId,
      );
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverVerificationRepository: ${e.message}");
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
  Future<Either<ApiErrorHandler, VerifyResponse>> careGiverCertificateApprove(
      {required String userID, required int status}) async {
    try {
      final response = await _apiClient.careGiverCertificateApprove(
        "",
        userID,
        status,
      );
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverVerificationRepository: ${e.message}");
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
  Future<Either<ApiErrorHandler, VerifyResponse>> careGiverBackgroundVerify(
      {required String userID,
      required int status,
      String? rejectReason}) async {
    try {
      final response = await _apiClient.careGiverBackgroundVerify(
          "", userID, status, rejectReason);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverVerificationRepository: ${e.message}");
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
  Future<Either<ApiErrorHandler, VerifyResponse>> careGiverCertificateReject(
      {required RejectionParams params}) async {
    try {
      final response = await _apiClient.careGiverCertificateReject("", params);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverVerificationRepository: ${e.message}");
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
  Future<Either<ApiErrorHandler, VerifyResponse>> careGiverSendTrainingRequest(
      {required String userID}) async {
    try {
      final response = await _apiClient.careGiverSendTrainingRequest(
        "",
        userID,
      );
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverVerificationRepository: ${e.message}");
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
  Future<Either<ApiErrorHandler, CommonResponseUse>> notifyPendingDocument({
    required String userID,
  }) async {
    try {
      final response = await _apiClient.notifyPendingDocument(
          "", userID, SharedPreffUtil().getUserId);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverVerificationRepository: ${e.message}");
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
