import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_detail_response.dart';
import 'package:admin_580_tech/infrastructure/caregiver_detail/caregiver_detail_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';

part 'caregiver_detail_event.dart';

part 'caregiver_detail_state.dart';

part 'caregiver_detail_bloc.freezed.dart';

class CaregiverDetailBloc
    extends Bloc<CareGiverDetailEvent, CareGiverDetailState> {
  CareGiverDetailRepository careGiverDetailRepository;

  CaregiverDetailBloc(this.careGiverDetailRepository)
      : super(CareGiverDetailState.initial()) {
    on<_GetCareGiverDetail>(_getCareGiverDetail);
    on<_GetSelectedDate>(_getSelectedDate);
    on<_GetSelectedScheduleServices>(_getScheduleServices);
  }

  void _getCareGiverDetail(
      _GetCareGiverDetail event, Emitter<CareGiverDetailState> emit) async {
    final Either<ApiErrorHandler, CareGiverDetailResponse> result =
        await careGiverDetailRepository.getCareGiverDetail(
      userID: event.userId,
    );
    var homeState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false);
    }, (r) {
      return state.copyWith(response: r, isLoading: false);
    });
    emit(homeState);
  }

  void _getSelectedDate(
      _GetSelectedDate event, Emitter<CareGiverDetailState> emit) {
    emit(state.copyWith(selectedDate: event.selectedDate));
  }

  void _getScheduleServices(_GetSelectedScheduleServices event, Emitter<CareGiverDetailState> emit) {
    emit(state.copyWith(selectedScheduleServices: event.services));
  }
}
