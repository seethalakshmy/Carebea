import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/role_creation/model/view_role_response.dart';
import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import 'model/module_response.dart';

abstract class IRoleCreationRepo {
  Future<Either<ApiErrorHandler, CommonResponseUse>> addRoleUpdateRole(
      {required String userId,
      required String role,
      required List<String> moduleId,
      required int isView,
      required int isEdit,
      required int isDelete});
  Future<Either<ApiErrorHandler, ModuleResponse>> getModule({
    required String userId,
  });
  Future<Either<ApiErrorHandler, ViewRoleResponse>> viewRole(
      {required String userId, required String roleId});
}
