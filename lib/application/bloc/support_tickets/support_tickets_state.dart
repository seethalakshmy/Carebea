part of 'support_tickets_bloc.dart';

@freezed
class SupportTicketsState with _$SupportTicketsState {
  const factory SupportTicketsState(
      {required bool isLoading,
      required bool isError,
      required SupportTicketsResponse? response,
      required String? error}) = _SupportTicketsState;

  factory SupportTicketsState.initial() {
    return const SupportTicketsState(
        isLoading: true, isError: false, response: null, error: null);
  }
}
