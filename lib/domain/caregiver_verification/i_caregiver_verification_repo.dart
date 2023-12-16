import 'package:admin_580_tech/domain/caregiver_verification/model/caregiver_verification_response.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/reject_params.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/verify_response.dart';
import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

import '../on_boarding/models/common_response.dart';

abstract class ICareGiverVerificationRepo {
  Future<Either<ApiErrorHandler, CaregiverVerificationResponse>>
      getCareGiverVerificationData({
    required String userID,
  });
  Future<Either<ApiErrorHandler, VerifyResponse>> careGiverBackgroundVerify({
    required String userID,
    required int status,
    required String adminId,
    String? rejectReason,
  });
  Future<Either<ApiErrorHandler, VerifyResponse>> careGiverCertificateApprove({
    required String userID,
    required int status,
    required String adminId,
  });
  Future<Either<ApiErrorHandler, CommonResponse>> careGiverCertificateReject(
      {required RejectionParams params});
  Future<Either<ApiErrorHandler, VerifyResponse>> careGiverSendTrainingRequest(
      {required String userID, required String adminId});
  Future<Either<ApiErrorHandler, CommonResponseUse>> notifyPendingDocument({
    required String userID,
  });
}
