import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import 'model/forgot_password.dart';

abstract class IForgotPasswordRepo {
  Future<Either<ApiErrorHandler, ForgotPassword>> forgotPassword(
      {required String email});
}
