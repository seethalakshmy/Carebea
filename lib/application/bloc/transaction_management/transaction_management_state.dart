part of 'transaction_management_bloc.dart';

@freezed
class TransactionManagementState with _$TransactionManagementState {
  const factory TransactionManagementState({
    required bool isLoading,
    required bool isInitialLoading,
    required bool isDetailsLoading,
    required bool isError,
    required bool isClicked,
    required TransactionListResponse? response,
    required String? error,
    required Option<Either<ApiErrorHandler, GetFiltersResponse>> filterOption,
    required Option<Either<ApiErrorHandler, TransactionDetailsResponse>>
        trDetailsOption,
  }) = _TransactionsState;

  factory TransactionManagementState.initial() {
    return const TransactionManagementState(
      isLoading: false,
      isInitialLoading: false,
      isDetailsLoading: false,
      isError: false,
      isClicked: false,
      response: null,
      error: null,
      filterOption: None(),
      trDetailsOption: None(),
    );
  }
}
