part of 'caregiver_detail_bloc.dart';

@freezed
class CareGiverDetailState with _$CareGiverDetailState {
  const factory CareGiverDetailState({
    required bool isLoading,
    required bool isError,
    required CareGiverDetailResponse? response,
    required String? error,
    required DateTime selectedDate,
    required List<ServiceDates> selectedScheduleServices,
  }) = _CareGiversDetailState;

  factory CareGiverDetailState.initial() {
    return CareGiverDetailState(
        isLoading: true,
        isError: false,
        response: null,
        error: null,
        selectedDate: DateTime.now(),
        selectedScheduleServices: []);
  }
}
