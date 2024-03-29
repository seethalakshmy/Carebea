import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import '../on_boarding/models/common_response.dart';

abstract class IResetPasswordRepo {
  Future<Either<ApiErrorHandler, CommonResponse>> resetPassword(
      {required String password, required String userId});
}
