import 'package:admin_580_tech/domain/caregiver_profile/model/caregiver_profile_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

import '../caregiver_verification/model/verify_response.dart';

abstract class ICareGiverProfileRepo {
  Future<Either<ApiErrorHandler, CaregiverProfileResponse>>
      getCareGiverProfile({
    required String userID,
  });
  Future<Either<ApiErrorHandler, VerifyResponse>> careGiverTrainingVerify(
      {required String userID, required bool status});
  Future<Either<ApiErrorHandler, VerifyResponse>> careGiverInterViewVerify(
      {required String userID, required bool status});
}
