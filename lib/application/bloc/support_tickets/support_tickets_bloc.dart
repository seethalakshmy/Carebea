import 'package:admin_580_tech/domain/support_tickets/model/support_tickets_response.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../infrastructure/support_tickets/support_ticket_repository.dart';

part 'support_tickets_bloc.freezed.dart';

part 'support_tickets_event.dart';

part 'support_tickets_state.dart';

class SupportTicketsBloc
    extends Bloc<SupportTicketsEvent, SupportTicketsState> {
  SupportTicketsRepository supportTicketsRepository;

  SupportTicketsBloc(this.supportTicketsRepository)
      : super(SupportTicketsState.initial()) {
    on<_GetSupportTickets>(_getSupportTickets);
  }

  _getSupportTickets(
      _GetSupportTickets event, Emitter<SupportTicketsState> emit) async {
    emit(state.copyWith(isLoading: false));
    final Either<ApiErrorHandler, SupportTicketsResponse> result =
        await supportTicketsRepository.getSupportTickets(
            page: event.page, limit: event.limit);
    var userState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false);
    }, (r) {
      return state.copyWith(response: r, isLoading: false);
    });
    emit(userState);
  }
}
