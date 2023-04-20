import 'dart:io';

import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/domain/caregiver_list/care_givers_response.dart';
import 'package:admin_580_tech/domain/caregiver_list/i_caregiver_list_repo.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class CareGiverListRepository implements ICareGiverListRepo {
  final ApiClient _apiClient = ApiClient(Dio());


  @override
  Future<Either<ApiErrorHandler, CaregiversResponse>> getCareGivers(
      { required int page, required int limit}) async {
    try {
      final response = await _apiClient.getCareGivers(page, limit);
      // var response = CaregiversResponse(status: true,data: Data(caregivers:caregivers ));
      return Right(response);
    } on SocketException {
      print('exception is internet');
      return const Left(ClientFailure(error: Strings.noInternetConnection));

    } on Exception catch(e) {
      print('exception is $e');
      return const Left(ServerFailure(error: Strings.somethingWentWrong));
    }
  }
}
