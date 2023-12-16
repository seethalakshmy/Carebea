import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import '../on_boarding/models/common_response.dart';

abstract class IVerifyEmailRepo {
  Future<Either<ApiErrorHandler, CommonResponse>> verifyEmail(
      {required String otp, required String userId, required int type});
}
