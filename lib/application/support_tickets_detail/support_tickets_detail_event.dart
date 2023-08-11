part of 'support_tickets_detail_bloc.dart';

@freezed
class SupportTicketsDetailEvent with _$SupportTicketsDetailEvent {
  const factory SupportTicketsDetailEvent.getSupportTickets(
      {required String userId,
      required int page,
      required int limit}) = _GetSupportTicketsDetail;
}
