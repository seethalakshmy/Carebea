import 'package:admin_580_tech/domain/caregivers/model/caregiver_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

import '../caregiver_verification/model/verify_response.dart';

abstract class ICareGiversRepo {
  Future<Either<ApiErrorHandler, CareGiverResponse>> getCareGivers(
      {required String userID,
      required String adminId,
      required int page,
      required int limit,
      required int type,
      String? searchTerm,
      int filterId});
  Future<Either<ApiErrorHandler, VerifyResponse>> careGiverActiveOrInactive(
      {required String userID, required bool status,required String adminId});
}
