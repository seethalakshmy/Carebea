import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/subProfile_details/model/sub_profile_detail_response.dart';
import 'package:dartz/dartz.dart';

abstract class ISubProfileDetailRepo {
  Future<Either<ApiErrorHandler, SubProfileDetailResponse>> getSubProfileDetail(
      {required String userId, required String adminId});
}
