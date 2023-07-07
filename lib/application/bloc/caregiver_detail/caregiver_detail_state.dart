part of 'caregiver_detail_bloc.dart';

@freezed
class CareGiverDetailState with _$CareGiverDetailState {
  const factory CareGiverDetailState({
    required bool isLoading,
    required bool isError,
    required CareGiverDetailResponse? response,
    required CareGiverServiceListResponse? serviceListResponse,
    required CareGiverEarningsListResponse? earningsListResponse,
    required CareGiverServiceRequestListResponse? serviceRequestListResponse,
    required String? error,
    required DateTime selectedDate,
    required List<ServiceDates> selectedScheduleServices,
  }) = _CareGiversDetailState;

  factory CareGiverDetailState.initial() {
    return CareGiverDetailState(
        isLoading: true,
        isError: false,
        response: null,
        earningsListResponse: null,
        serviceListResponse: null,
        serviceRequestListResponse: null,
        error: null,
        selectedDate: DateTime.now(),
        selectedScheduleServices: []);
  }
}
