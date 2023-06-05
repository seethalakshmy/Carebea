import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_detail_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';


abstract class ICareGiverDetailRepo {
  Future<Either<ApiErrorHandler, CareGiverDetailResponse>> getCareGiverDetail(
      {required String userID});
}
