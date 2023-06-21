part of 'caregiver_detail_bloc.dart';

@freezed
class CareGiverDetailEvent with _$CareGiverDetailEvent {
  const factory CareGiverDetailEvent.getCareGiverDetail({required String userId}) = _GetCareGiverDetail;
  const factory CareGiverDetailEvent.getSelectedDate({required DateTime selectedDate}) = _GetSelectedDate;
  const factory CareGiverDetailEvent.getSelectedScheduleServices({required List<ServiceDates> services}) = _GetSelectedScheduleServices;
}
