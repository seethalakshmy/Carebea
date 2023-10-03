import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/subProfile_details/i_sub_profile_detail_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/enum.dart';
import '../../domain/subProfile_details/model/sub_profile_detail_response.dart';

class SubProfileDetailRepository implements ISubProfileDetailRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, SubProfileDetailResponse>> getSubProfileDetail(
      {required String userId, required String adminId}) async {
    try {
      final response = await _apiClient.getSubProfileDetails(userId, adminId);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log(": ${e.message}");

      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }
}
