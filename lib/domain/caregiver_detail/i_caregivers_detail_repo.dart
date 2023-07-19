import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_detail_response.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_earning_list_response.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_service_list_response.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_service_request_list_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class ICareGiverDetailRepo {
  Future<Either<ApiErrorHandler, CareGiverDetailResponse>> getCareGiverDetail(
      {required String userID});
  Future<Either<ApiErrorHandler, CareGiverServiceListResponse>>
      getCareGiverServiceList(
          {required String userID, required int page, required int limit});
  Future<Either<ApiErrorHandler, CareGiverEarningsListResponse>>
      getCareGiverEarningsList(
          {required String userID, required int page, required int limit});
  Future<Either<ApiErrorHandler, CareGiverServiceRequestListResponse>>
      getCareGiverServiceRequestedList(
          {required String userID, required int page, required int limit});
}
