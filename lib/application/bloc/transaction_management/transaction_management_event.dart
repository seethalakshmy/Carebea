part of 'transaction_management_bloc.dart';

@freezed
abstract class TransactionManagementEvent with _$TransactionManagementEvent {
  const factory TransactionManagementEvent.getTransactions(
      {/*required String userId,*/
      required int page,
      required int limit}) = _GetTransactions;
}
