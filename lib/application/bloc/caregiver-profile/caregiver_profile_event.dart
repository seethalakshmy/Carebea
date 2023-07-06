part of 'caregiver_profile_bloc.dart';

@freezed
class CareGiverProfileEvent with _$CareGiverProfileEvent {
  const factory CareGiverProfileEvent.getCareGiverProfile({
    required String userId,
  }) = _GetCareGiverProfile;
  const factory CareGiverProfileEvent.careGiverTrainingVerify(
      {required String userId,
      required bool status,
      required BuildContext context}) = _CareGiverTrainingVerify;

  const factory CareGiverProfileEvent.careGiverInterViewVerify(
      {required String userId,
      required bool status,
      required BuildContext context}) = _CareGiverInterViewVerify;
}
