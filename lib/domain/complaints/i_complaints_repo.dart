import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

import 'model/complaints_list_response_model.dart';

abstract class IComplaintsRepo {
  Future<Either<ApiErrorHandler, ComplaintsListResponseModel>> getComplaints(
      {required String userId,
      required String page,
      required String limit,
      required String searchTerm,
      required int status});
}
