import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/login/login_response.dart';
import 'package:dartz/dartz.dart';

abstract class ILoginRepo {
  Future<Either<ApiErrorHandler, LoginResponse>> login(
      {required String email, required String password});
}
