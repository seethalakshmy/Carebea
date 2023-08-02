import 'package:admin_580_tech/domain/admin_creation/model/admin_view_response.dart';
import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/roles/model/get_role_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/admin_creation/i_admin_creation_repo.dart';
import '../../domain/core/api_client.dart';

class AdminCreationRepository implements IAdminCreationRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, AdminViewResponse>> viewRole(
      {required String userId, required String adminId}) async {
    try {
      final response = await _apiClient.viewAdmin("", userId, adminId);
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
  Future<Either<ApiErrorHandler, CommonResponseUse>> addAdmin(
      {required String userId,
      required String role,
      required String firstName,
      required String lastName,
      required String email,
      required String phoneNumber,
      String? profileUrl}) async {
    try {
      final response = await _apiClient.addAdmin("", userId, firstName,
          lastName, email, phoneNumber, role, profileUrl);
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

  @override
  Future<Either<ApiErrorHandler, CommonResponseUse>> updateAdmin(
      {required String userId,
      required String adminId,
      required String role,
      required String firstName,
      required String lastName,
      required String email,
      required String phoneNumber,
      String? profileUrl}) async {
    try {
      final response = await _apiClient.updateAdmin("", userId, adminId,
          firstName, lastName, email, phoneNumber, role, profileUrl);
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
