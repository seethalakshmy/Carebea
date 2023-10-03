import 'package:admin_580_tech/domain/complaints/model/complaints_list_response_model.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/complaints/i_complaints_repo.dart';
import '../../domain/core/api_client.dart';

class ComplaintsRepository implements IComplaintsRepo {
  ApiClient apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, ComplaintsListResponseModel>> getComplaints(
      {required String userId,
      required String page,
      required String limit,
      required String searchTerm,
      required int status}) async {
    try {
      final response = await apiClient.getComplaints(
          userId, page, limit, searchTerm, status);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
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
