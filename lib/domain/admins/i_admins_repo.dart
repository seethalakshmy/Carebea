import 'package:admin_580_tech/domain/admins/model/admin_get_response.dart';
import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

import '../roles/model/get_role_response.dart';

abstract class IAdminsRepo {
  Future<Either<ApiErrorHandler, AdminGetResponse>> getAdmins({
    required String userID,
    required int page,
    required int limit,
    String? status,
    String? roleId,
    String? searchTerm,
  });
  Future<Either<ApiErrorHandler, CommonResponseUse>> deleteAdmin(
      {required String userID, required String adminID});
  Future<Either<ApiErrorHandler, GetRoleResponse>> getRoles({
    required String userID,
  });
}
