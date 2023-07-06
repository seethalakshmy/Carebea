import 'package:admin_580_tech/domain/caregiver_creation/i_caregiver_creation_repo.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/presentation/caregiver_creation/models/caregiver_creation_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/core/api_client.dart';

class CaregiverCreationRepository implements ICaregiverCreationRepo {
  ApiClient apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, CaregiverCreationResponse>> createCaregiver(
      {required String firstName,
      required String lastName,
      required String email,
      required String mobileNo}) async {
    try {
      final response =
          await apiClient.createCaregiver(firstName, lastName, mobileNo, email);
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
