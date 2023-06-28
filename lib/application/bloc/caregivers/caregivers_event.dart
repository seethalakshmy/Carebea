part of 'caregivers_bloc.dart';

@freezed
class CareGiversEvent with _$CareGiversEvent {
  const factory CareGiversEvent.getCareGivers(
      {required String userId,
      required int page,
      required int limit,
      required int type,
      String? searchTerm,
      int? filterId}) = _GetCareGivers;
  const factory CareGiversEvent.isUserActive(Caregivers caregiver) =
      _IsUserActive;
  const factory CareGiversEvent.isSelectedTab(Types type) = _IsSelectedTab;
}
