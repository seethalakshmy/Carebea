import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import '../on_boarding/models/resend_otp_response.dart';

abstract class ResendOTPRepo {
  Future<Either<ApiErrorHandler, ResendOTPResponse>> resendOTP({
    required String userId,
    required int type,
  });
}
