part of 'caregiver_detail_bloc.dart';

@freezed
class CareGiverDetailEvent with _$CareGiverDetailEvent {
  const factory CareGiverDetailEvent.getCareGiverDetail({required String userId}) = _GetCareGiverDetail;
}
