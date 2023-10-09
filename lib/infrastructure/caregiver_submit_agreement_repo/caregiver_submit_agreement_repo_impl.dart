import 'package:admin_580_tech/domain/caregiver_submit_agreement_repo/caregiver_submit_agreement_repo.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/enum.dart';
import '../../domain/on_boarding/models/common_response.dart';
import '../shared_preference/shared_preff_util.dart';

class CareGiverSubmitAgreementRepoImpl implements CareGiverSubmitAgreementRepo {
  final ApiClient _apiClient = ApiClient();

  CareGiverSubmitAgreementRepoImpl();

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> submit(
      {required String signatureUrl}) async {
    final sharedPrefUtil = SharedPreffUtil();
    try {
      final response = await _apiClient.createCareGiverAgreement(
          "Bearer ${sharedPrefUtil.getAccessToken}",
          sharedPrefUtil.getCareGiverUserId,
          signatureUrl);
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
