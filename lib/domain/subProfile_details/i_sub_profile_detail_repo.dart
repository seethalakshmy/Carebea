import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

import 'model/sub_profile_details_model.dart';

abstract class ISubProfileDetailRepo {
  Future<Either<ApiErrorHandler, SubProfileDetailResponse>> getSubProfileDetail(
      {required String userId, required String adminId});
}
