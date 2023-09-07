import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/login/login_response.dart';
import 'package:admin_580_tech/domain/signup/signup_response.dart';
import 'package:dartz/dartz.dart';

abstract class ISignupRepo {
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
      required bool isSocialLogin});
}
