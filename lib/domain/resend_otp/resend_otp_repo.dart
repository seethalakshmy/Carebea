import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import '../on_boarding/models/common_response.dart';

abstract class ResendOTPRepo {
  Future<Either<ApiErrorHandler, CommonResponse>> resendOTP({
    required String userId,
    required int type,
  });
}
