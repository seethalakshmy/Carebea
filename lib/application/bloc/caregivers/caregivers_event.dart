part of 'caregivers_bloc.dart';

@freezed
class CareGiversEvent with _$CareGiversEvent {
  const factory CareGiversEvent.getCareGivers({required int page, required int limit}) = _GetCareGivers;
}