import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/user_management_detail/model/user_detail_response.dart';
import 'package:dartz/dartz.dart';

import 'model/client_service_response.dart';

abstract class IClientDetailRepo {
  Future<Either<ApiErrorHandler, UserDetailResponse>> getUserDetail(
      {required String userId, required String adminId});

  Future<Either<ApiErrorHandler, ClientServiceResponse>> getClientService(
      {required String userId, required String adminId});
}
