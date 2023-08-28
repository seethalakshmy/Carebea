import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/support_tickets/model/support_tickets_response.dart';
import '../../../infrastructure/support_tickets_detail/support_tickets_detail_repository.dart';

part 'support_tickets_detail_event.dart';
part 'support_tickets_detail_state.dart';
part 'support_tickets_detail_bloc.freezed.dart';

class SupportTicketsDetailBloc
    extends Bloc<SupportTicketsDetailEvent, SupportTicketsDetailState> {
  SupportTicketsDetailRepository supportTicketsDetailRepository;

  SupportTicketsDetailBloc(this.supportTicketsDetailRepository)
      : super(SupportTicketsDetailState.initial()) {
    on<_GetSupportTicketsDetail>(_getSupportTickets);
  }

  _getSupportTickets(_GetSupportTicketsDetail event,
      Emitter<SupportTicketsDetailState> emit) async {
    emit(state.copyWith(isLoading: false));
    final Either<ApiErrorHandler, SupportTicketsResponse> result =
        await supportTicketsDetailRepository.getSupportTickets(
            page: event.page, limit: event.limit);
    var userState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false);
    }, (r) {
      return state.copyWith(response: r, isLoading: false);
    });
    emit(userState);
  }
}
