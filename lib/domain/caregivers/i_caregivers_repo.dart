import 'package:admin_580_tech/domain/caregivers/model/caregiver_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class ICareGiversRepo {
  Future<Either<ApiErrorHandler, CareGiverResponse>> getCareGivers(
      {required String userID,
      required int page,
      required int limit,
      required int type,
      String? searchTerm,
      int filterId});
}
