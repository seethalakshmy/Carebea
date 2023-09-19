import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/signup/i_signup_repo.dart';
import 'package:admin_580_tech/domain/signup/signup_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SignupRepository implements ISignupRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, SignUpResponse>> signup(
      {required String email,
      required String password,
      required String firstName,
      required String lastName,
      required String mobileNumber,
      required String deviceToken,
      required String profilePic,
      required String deviceType,
      required int userType,
      required bool isSocialLogin}) async {
    try {
      var res = await _apiClient.signup(
          email,
          password,
          firstName,
          lastName,
          mobileNumber,
          deviceToken,
          profilePic,
          deviceType,
          userType,
          isSocialLogin);
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
