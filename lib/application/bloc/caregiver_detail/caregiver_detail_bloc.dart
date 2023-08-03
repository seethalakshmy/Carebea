import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_detail_response.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_earning_list_response.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_service_request_list_response.dart';
import 'package:admin_580_tech/infrastructure/caregiver_detail/caregiver_detail_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../domain/caregiver_detail/model/caregiver_service_list_response.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';

part 'caregiver_detail_bloc.freezed.dart';
part 'caregiver_detail_event.dart';
part 'caregiver_detail_state.dart';

class CaregiverDetailBloc
    extends Bloc<CareGiverDetailEvent, CareGiverDetailState> {
  CareGiverDetailRepository careGiverDetailRepository;

  CaregiverDetailBloc(this.careGiverDetailRepository)
      : super(CareGiverDetailState.initial()) {
    on<_GetCareGiverDetail>(_getCareGiverDetail);
    on<_GetCareGiverServiceList>(_getCareGiverServiceList);
    on<_GetCareGiverEarningList>(_getCareGiverEarningList);
    on<_GetCareGiverServiceRequestList>(_getCareGiverServiceRequestList);
    on<_GetSelectedDate>(_getSelectedDate);
    on<_GetSelectedScheduleServices>(_getScheduleServices);
  }

  void _getCareGiverDetail(
      _GetCareGiverDetail event, Emitter<CareGiverDetailState> emit) async {
    final Either<ApiErrorHandler, CareGiverDetailResponse> result =
        await careGiverDetailRepository.getCareGiverDetail(
      userID: event.userId,
      adminId: event.adminId,
    );
    var homeState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      return state.copyWith(response: r, isLoading: false);
    });
    emit(homeState);
  }

  void _getCareGiverServiceList(_GetCareGiverServiceList event,
      Emitter<CareGiverDetailState> emit) async {
    emit(state.copyWith(isLoadingServices: true));
    final Either<ApiErrorHandler, CareGiverServiceListResponse> result =
        await careGiverDetailRepository.getCareGiverServiceList(
            userID: event.userId,
            page: event.page,
            limit: event.page,
            adminId: event.adminId);
    var homeState = result.fold((l) {
      return state.copyWith(
          error: l.error, isLoading: false, isLoadingServices: false);
    }, (r) {
      return state.copyWith(
          serviceListResponse: r, isLoading: false, isLoadingServices: false);
    });
    emit(homeState);
  }

  void _getCareGiverEarningList(_GetCareGiverEarningList event,
      Emitter<CareGiverDetailState> emit) async {
    emit(state.copyWith(isLoadingEarnings: true));
    final Either<ApiErrorHandler, CareGiverEarningsListResponse> result =
        await careGiverDetailRepository.getCareGiverEarningsList(
            userID: event.userId,
            page: event.page,
            limit: event.page,
            adminId: event.adminId);
    var homeState = result.fold((l) {
      return state.copyWith(
          error: l.error, isLoading: false, isLoadingEarnings: false);
    }, (r) {
      return state.copyWith(
          earningsListResponse: r, isLoading: false, isLoadingEarnings: false);
    });
    emit(homeState);
  }

  void _getCareGiverServiceRequestList(_GetCareGiverServiceRequestList event,
      Emitter<CareGiverDetailState> emit) async {
    emit(state.copyWith(isLoadingServiceRequest: true));
    final Either<ApiErrorHandler, CareGiverServiceRequestListResponse> result =
        await careGiverDetailRepository.getCareGiverServiceRequestedList(
            userID: event.userId, page: event.page, limit: event.page);
    var homeState = result.fold((l) {
      return state.copyWith(
          error: l.error, isLoading: false, isLoadingServiceRequest: false);
    }, (r) {
      return state.copyWith(
          serviceRequestListResponse: r,
          isLoading: false,
          isLoadingServiceRequest: false);
    });
    emit(homeState);
  }

  void _getSelectedDate(
      _GetSelectedDate event, Emitter<CareGiverDetailState> emit) {
    emit(state.copyWith(selectedDate: event.selectedDate));
  }

  void _getScheduleServices(
      _GetSelectedScheduleServices event, Emitter<CareGiverDetailState> emit) {
    emit(state.copyWith(selectedScheduleServices: event.services));
  }

  String convertTo12HourFormat(String time24Hour) {
    DateFormat inputFormat = DateFormat('HH:mm');
    DateTime dateTime = inputFormat.parse(time24Hour);
    DateFormat outputFormat = DateFormat('h:mm a');
    String time12Hour = outputFormat.format(dateTime);
    return time12Hour;
  }
}
