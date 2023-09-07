import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/email_otp_verification/i_email_otp_verification_repo.dart';
import 'package:admin_580_tech/domain/email_otp_verification/models/generate_otp_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/email_otp_verification/models/verify_otp_response.dart';

class EmailOtpVerificationRepository implements IEmailOtpVerificationRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, VerifyOtpResponse>> verifyOtp(
      {required String userID, required int type, required String otp}) async {
    try {
      var res = await _apiClient.verifyOtp(userID, type, otp);
      return Right(res);
    } on DioError catch (e) {
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

  @override
  Future<Either<ApiErrorHandler, GenerateOtpResponse>> generateOtp(
      {required String userId, required String mobileNumber}) async {
    try {
      var res = await _apiClient.generateOtp(userId, mobileNumber);
      return Right(res);
    } on DioError catch (e) {
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
