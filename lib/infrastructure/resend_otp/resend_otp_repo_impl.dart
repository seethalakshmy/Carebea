import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/enum.dart';
import '../../domain/core/api_client.dart';
import '../../domain/core/api_error_handler/api_error_handler.dart';
import '../../domain/on_boarding/models/resend_otp_response.dart';
import '../../domain/resend_otp/resend_otp_repo.dart';

class ResendOTPRepoImpl extends ResendOTPRepo {
  ApiClient apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, ResendOTPResponse>> resendOTP(
      {required String userId, required int type}) async {
    try {
      final response = await apiClient.resendOTP(userId, type);
      if (response.status == true) {
        return Right(response);
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    } on DioError catch (e) {
      if (e.message.contains("SocketException")) {
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }
}
