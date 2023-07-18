import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/admins/i_admins_repo.dart';
import 'package:admin_580_tech/domain/admins/model/admin_get_response.dart';
import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/roles/model/get_role_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AdminsRepository implements IAdminsRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, CommonResponseUse>> deleteAdmin(
      {required String userID, required String adminID}) async {
    try {
      final response = await _apiClient.deleteAdmin("", userID, adminID);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("AdminsRepository: ${e.message}");
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
  Future<Either<ApiErrorHandler, AdminGetResponse>> getAdmins(
      {required String userID,
      required int page,
      required int limit,
      String? status,
      String? roleId,
      String? searchTerm}) async {
    try {
      final response = await _apiClient.getAdmins(
          "", userID, page, limit, status, roleId, searchTerm);
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
      {required String userID}) async {
    try {
      final response = await _apiClient.getRoles("", userID, null, null, null);
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
