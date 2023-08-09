import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

import 'model/get_filters_response.dart';
import 'model/transaction_details_response.dart';
import 'model/transaction_list_response.dart';

abstract class ITransactionsRepo {
  Future<Either<ApiErrorHandler, TransactionListResponse>> getTransactions({
    required String token,
    required String userId,
    required String page,
    required int limit,
    required String searchTerm,
    required int filterId,
  });

  Future<Either<ApiErrorHandler, GetFiltersResponse>> getFilters();

  Future<Either<ApiErrorHandler, TransactionDetailsResponse>>
      getTransactionDetails(
          {required String token, required String transactionId});
}
