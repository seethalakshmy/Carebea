import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/roles/model/get_role_response.dart';
import 'package:dartz/dartz.dart';

abstract class IRolesRepo {
  Future<Either<ApiErrorHandler, GetRoleResponse>> getRoles({
    required String userID,
    required int page,
    required int limit,
    String? searchTerm,
  });
  Future<Either<ApiErrorHandler, CommonResponseUse>> deleteRole(
      {required String userID, required String roleID});
}
