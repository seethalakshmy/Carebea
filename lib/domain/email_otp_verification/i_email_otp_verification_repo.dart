import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import 'models/generate_otp_response.dart';
import 'models/verify_otp_response.dart';

abstract class IEmailOtpVerificationRepo {
  Future<Either<ApiErrorHandler, VerifyOtpResponse>> verifyOtp(
      {required String userID, required int type, required String otp});

  Future<Either<ApiErrorHandler, GenerateOtpResponse>> generateOtp(
      {required String userId, required String mobileNumber});
}
