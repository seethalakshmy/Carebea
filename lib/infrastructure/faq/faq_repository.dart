import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/faq/models/faq_list_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/core/api_client.dart';
import '../../domain/faq/i_faq_repo.dart';
import '../../domain/on_boarding/models/common_response.dart';

class FaqRepository implements IFaqRepo {
  ApiClient apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, FaqListResponseModel>> getFaqList(
      {required String searchTerm}) async {
    try {
      final response = await apiClient.getFaqList(searchTerm);
      return Right(response);
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
  Future<Either<ApiErrorHandler, CommonResponse>> deleteFaq(
      {required String faqId}) async {
    try {
      final response = await apiClient.deleteFaq(faqId);
      return Right(response);
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
