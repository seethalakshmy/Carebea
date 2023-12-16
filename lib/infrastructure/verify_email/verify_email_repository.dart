import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/enum.dart';
import '../../domain/core/api_client.dart';
import '../../domain/core/api_error_handler/api_error_handler.dart';
import '../../domain/on_boarding/models/common_response.dart';
import '../../domain/verify_email/i_email_verify_repo.dart';

class VerifyEmailRepository implements IVerifyEmailRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> verifyEmail(
      {required String otp, required String userId, required int type}) async {
    try {
      var res = await _apiClient.verifyEmail(otp, userId, type);
      return Right(res);
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
