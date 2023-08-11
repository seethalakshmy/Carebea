part of 'support_tickets_bloc.dart';

@freezed
class SupportTicketsEvent with _$SupportTicketsEvent {
  const factory SupportTicketsEvent.getSupportTickets(
      {required String userId,
      required int page,
      required int limit}) = _GetSupportTickets;
}
