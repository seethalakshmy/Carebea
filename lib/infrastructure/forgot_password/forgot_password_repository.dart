import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/forgot_password/forgot_password_i_repo.dart';
import '../../domain/forgot_password/model/forgot_password.dart';

class ForgotPasswordRepository implements IForgotPasswordRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, ForgotPassword>> forgotPassword(
      {required String email}) async {
    try {
      var res = await _apiClient.forgotPassword(email);
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
