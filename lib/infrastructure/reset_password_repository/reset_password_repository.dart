import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/on_boarding/models/common_response.dart';
import '../../domain/reset_password/i_reset_password_repo.dart';

class ResetPasswordRepository implements IResetPasswordRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> resetPassword(
      {required String password, required String userId}) async {
    try {
      var res = await _apiClient.resetPassword(password, userId);
      return Right(res);
    } on DioError catch (e) {
      CustomLog.log("CareGiverDetailRepository: ${e.message}");
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
