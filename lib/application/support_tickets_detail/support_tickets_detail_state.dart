part of 'support_tickets_detail_bloc.dart';

@freezed
class SupportTicketsDetailState with _$SupportTicketsDetailState {
  const factory SupportTicketsDetailState(
      {required bool isLoading,
      required bool isError,
      required SupportTicketsResponse? response,
      required String? error}) = _SupportTicketsState;

  factory SupportTicketsDetailState.initial() {
    return const SupportTicketsDetailState(
        isLoading: true, isError: false, response: null, error: null);
  }
}
