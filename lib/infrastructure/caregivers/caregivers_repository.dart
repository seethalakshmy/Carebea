import 'dart:io';

import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/string.dart';

import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/caregivers/care_givers_response.dart';
import '../../domain/caregivers/i_caregiver_list_repo.dart';

class CareGiversRepository implements ICareGiverListRepo {
  final ApiClient _apiClient = ApiClient(Dio());

  @override
  Future<Either<ApiErrorHandler, CaregiversResponse>> getCareGivers(
      {required int page, required int limit}) async {
    try {
      final response =
          await _apiClient.getCareGivers(Strings.token, page, limit);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException") ||
          e.message.contains("XMLHttpRequest")) {
        CustomLog.log("reached here..");
        return const Left(ClientFailure(error: Strings.noInternetConnection,isClientError:true ));
      } else {
        return const Left(ServerFailure(error: Strings.somethingWentWrong,isClientError: false));
      }
    }
  }
}
