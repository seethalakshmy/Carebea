import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/role_creation/i_role_creation_repo.dart';
import 'package:admin_580_tech/domain/role_creation/model/module_response.dart';
import 'package:admin_580_tech/domain/role_creation/model/view_role_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/core/api_client.dart';

class RoleCreationRepository implements IRoleCreationRepo {
  ApiClient apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> addRoleUpdateRole({
    required String userId,
    required String role,
    required List<String> moduleId,
    String? roleId,
    required int isView,
    required int isEdit,
    required int isDelete,
  }) async {
    try {
      final response = await apiClient.addRoleUpdateRole(
        "",
        userId,
        role,
        roleId,
        moduleId,
        isView,
        isDelete,
        isEdit,
      );
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, ModuleResponse>> getModule(
      {required String userId}) async {
    try {
      final response = await apiClient.getModules(
        "",
        userId,
      );
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, ViewRoleResponse>> viewRole(
      {required String userId, required String roleId}) async {
    try {
      final response = await apiClient.viewRole("", userId, roleId);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }
}
