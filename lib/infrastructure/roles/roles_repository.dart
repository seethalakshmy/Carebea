import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/roles/i_roles_repo.dart';
import 'package:admin_580_tech/domain/roles/model/get_role_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class RolesRepository implements IRolesRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, CommonResponseUse>> deleteRole(
      {required String userID, required String roleID}) async {
    try {
      final response = await _apiClient.deleteRole("", userID, roleID);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
          error: AppString.noInternetConnection.val,
          isClientError: true,
        ));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, GetRoleResponse>> getRoles(
      {required String userID,
      required int page,
      required int limit,
      String? searchTerm}) async {
    try {
      final response = await _apiClient.getRoles(
        "",
        userID,
        page,
        limit,
        searchTerm,
      );
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
          error: AppString.noInternetConnection.val,
          isClientError: true,
        ));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }
}
