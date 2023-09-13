import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import '../roles/model/get_role_response.dart';
import 'model/admin_view_response.dart';

abstract class IAdminCreationRepo {
  Future<Either<ApiErrorHandler, CommonResponseUse>> addAdmin(
      {required String userId,
      required String role,
      required String firstName,
      required String lastName,
      required String email,
      required String phoneNumber,
      String? profileUrl});

  Future<Either<ApiErrorHandler, CommonResponseUse>> updateAdmin(
      {required String userId,
      required String adminId,
      required String role,
      required String firstName,
      required String lastName,
      required String email,
      required String phoneNumber,
      String? profileUrl});

  Future<Either<ApiErrorHandler, GetRoleResponse>> getRoles(
      {required String userID, required String searchTerm});

  Future<Either<ApiErrorHandler, AdminViewResponse>> viewRole(
      {required String userId,
      required String adminId,
      required String searchTerm});
}
