import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/login/i_login_repo.dart';
import 'package:admin_580_tech/domain/login/login_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class LoginRepository implements ILoginRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, LoginResponse>> login(
      {required String email, required String password}) async {
    try {
      var res = await _apiClient.login(email, password);
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
