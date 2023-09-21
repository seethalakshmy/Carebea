import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/transaction_management/i_transactions_repo.dart';
import 'package:admin_580_tech/domain/transaction_management/model/get_filters_response.dart';
import 'package:admin_580_tech/domain/transaction_management/model/transaction_details_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/core/api_error_handler/api_error_handler.dart';
import '../../domain/transaction_management/model/transaction_list_response.dart';

class TransactionsRepository implements ITransactionsRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, GetFiltersResponse>> getFilters() async {
    try {
      final response = await _apiClient.getFilters();
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

  @override
  Future<Either<ApiErrorHandler, TransactionListResponse>> getTransactions(
      {required String token,
      required String userId,
      required String page,
      required int limit,
      required String searchTerm,
      required int filterId}) async {
    try {
      final response = await _apiClient.getTransactions(
          token, userId, page, limit, searchTerm, filterId);
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

  @override
  Future<Either<ApiErrorHandler, TransactionDetailsResponse>>
      getTransactionDetails(
          {required String token,
          required String transactionId,
          required String serviceId}) async {
    try {
      final response = await _apiClient.getTransactionDetails(
          token, serviceId, transactionId);
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
