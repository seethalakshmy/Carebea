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

import '../../domain/on_boarding/models/common_response.dart';

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
        SharedPreffUtil().getAdminId,
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
      {required String userID,
      required String adminId,
      required int status}) async {
    try {
      final response = await _apiClient.careGiverCertificateApprove(
        "",
        userID,
        adminId,
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
      required String adminId,
      String? rejectReason}) async {
    try {
      final response = await _apiClient.careGiverBackgroundVerify(
        "",
        userID,
        status,
        adminId,
        rejectReason,
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
  Future<Either<ApiErrorHandler, CommonResponse>> careGiverCertificateReject(
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
      {required String userID, required String adminId}) async {
    try {
      final response =
          await _apiClient.careGiverSendTrainingRequest("", userID, adminId);
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
          "", userID, SharedPreffUtil().getAdminId);
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
