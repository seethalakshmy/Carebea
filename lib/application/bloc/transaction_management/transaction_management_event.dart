part of 'transaction_management_bloc.dart';

@freezed
abstract class TransactionManagementEvent with _$TransactionManagementEvent {
  const factory TransactionManagementEvent.getFilters() = _GetFilters;

  const factory TransactionManagementEvent.getTransactions(
      {required String userId,
      required String page,
      required int limit,
      required String searchTerm,
      String? clientId,
      required int statusId}) = _GetTransactions;

  const factory TransactionManagementEvent.hideOrShowDetails(
      {required bool clicked}) = _HideOrShowDetails;

  const factory TransactionManagementEvent.getTransactionDetails(
      {required String transactionId,
      required String serviceId}) = _GetTransactionDetails;
}
