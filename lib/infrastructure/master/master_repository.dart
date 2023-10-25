import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/service_request_management/i_service_request_management_repo.dart';
import 'package:admin_580_tech/domain/service_request_management/model/assign_caregiver_params.dart';
import 'package:admin_580_tech/domain/service_request_management/model/reschedule_params.dart';
import 'package:admin_580_tech/domain/service_request_management/model/service_details_response_model.dart';
import 'package:admin_580_tech/domain/service_request_management/model/service_request_response.dart';
import 'package:admin_580_tech/domain/service_request_management/model/service_status_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/caregiver_profile/model/caregiver_profile_response.dart';
import '../../domain/core/api_client.dart';
import '../../domain/master/i_master_repo.dart';
import '../../domain/master/model/region_list_response.dart';
import '../../domain/service_request_management/model/reschedule_response.dart';
import '../../domain/service_request_management/model/service_request_list_response_model.dart';
import '../../domain/transaction_management/model/get_filters_response.dart';

class MasterRepository implements IMasterRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, RegionListResponse>> getRegionList() async {
    try {
      final response = await _apiClient.getRegions();
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
