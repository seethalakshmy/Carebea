import 'package:admin_580_tech/domain/transaction_management/model/transaction_response.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../infrastructure/transaction_management/transactions_repository.dart';

part 'transaction_management_bloc.freezed.dart';

part 'transaction_management_event.dart';

part 'transaction_management_state.dart';

class TransactionManagementBloc
    extends Bloc<TransactionManagementEvent, TransactionManagementState> {
  TransactionsRepository transactionsRepository;

  TransactionManagementBloc(this.transactionsRepository)
      : super(TransactionManagementState.initial()) {
    on<TransactionManagementEvent>((event, emit) async {
      if (event is _GetTransactions) {
        emit(state.copyWith(isLoading: false));
        final Either<ApiErrorHandler, TransactionResponse> result =
            await transactionsRepository.getTransactions(
                page: event.page, limit: event.limit);
        var transactionState = result.fold((l) {
          return state.copyWith(error: l.error, isLoading: false);
        }, (r) {
          return state.copyWith(response: r, isLoading: false);
        });
        emit(transactionState);
      }
    });
  }
}
