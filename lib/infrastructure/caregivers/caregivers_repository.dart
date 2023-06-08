import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/caregivers/i_caregivers_repo.dart';
import '../../domain/caregivers/model/caregiver_response.dart';

class CareGiversRepository implements ICareGiversRepo {
  final ApiClient _apiClient = ApiClient(Dio());

  @override
  Future<Either<ApiErrorHandler, CareGiverResponse>> getCareGivers(
      {required String userID,required int page, required int limit,required int type,String ?searchTerm, int? filterId}) async {
    try {
      final response =
          await _apiClient.getCareGivers("",userID, page, limit,type,searchTerm,filterId);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException") ||
          e.message.contains("XMLHttpRequest")) {
        CustomLog.log("reached here..");
        return const Left(ClientFailure(
            error: Strings.noInternetConnection, isClientError: true));
      } else {
        return const Left(ServerFailure(
            error: Strings.somethingWentWrong, isClientError: false));
      }
    }
  }
}
