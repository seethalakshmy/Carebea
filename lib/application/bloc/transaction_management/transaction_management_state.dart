part of 'transaction_management_bloc.dart';

@freezed
class TransactionManagementState with _$TransactionManagementState {
  const factory TransactionManagementState(
      {required bool isLoading,
      required bool isError,
      required TransactionResponse? response,
      required String? error}) = _TransactionsState;

  factory TransactionManagementState.initial() {
    return const TransactionManagementState(
        isLoading: true, isError: false, response: null, error: null);
  }
}
