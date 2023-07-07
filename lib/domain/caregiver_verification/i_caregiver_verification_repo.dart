import 'package:admin_580_tech/domain/caregiver_verification/model/caregiver_verification_response.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/reject_params.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/verify_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class ICareGiverVerificationRepo {
  Future<Either<ApiErrorHandler, CaregiverVerificationResponse>>
      getCareGiverVerificationData({
    required String userID,
  });
  Future<Either<ApiErrorHandler, VerifyResponse>> careGiverBackgroundVerify({
    required String userID,
    required int status,
    String? rejectReason,
  });
  Future<Either<ApiErrorHandler, VerifyResponse>> careGiverCertificateApprove({
    required String userID,
    required int status,
  });
  Future<Either<ApiErrorHandler, VerifyResponse>> careGiverCertificateReject(
      {required RejectionParams params});
  Future<Either<ApiErrorHandler, VerifyResponse>> careGiverSendTrainingRequest({
    required String userID,
  });
}
