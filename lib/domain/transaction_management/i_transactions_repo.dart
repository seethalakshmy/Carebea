import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/transaction_management/model/transaction_response.dart';
import 'package:dartz/dartz.dart';


abstract class ITransactionsRepo {
  Future<Either<ApiErrorHandler, TransactionResponse>> getTransactions(
      {required int page, required int limit});
}
