part of 'caregiver_profile_bloc.dart';

@freezed
class CareGiverProfileEvent with _$CareGiverProfileEvent {
  const factory CareGiverProfileEvent.getCareGiverProfile({
    required String userId,
    required String adminId,
    required BuildContext context,
  }) = _GetCareGiverProfile;
  const factory CareGiverProfileEvent.careGiverTrainingVerify(
      {required String userId,
      required String adminId,
      required bool status,
      required BuildContext context}) = _CareGiverTrainingVerify;

  const factory CareGiverProfileEvent.careGiverInterViewVerify(
      {required String userId,
      required String adminId,
      required int status,
      required BuildContext context}) = _CareGiverInterViewVerify;
  const factory CareGiverProfileEvent.onTappedStatusDropDown(bool val) =
      _OnTappedStatusDropDown;
  const factory CareGiverProfileEvent.careGiverSendTrainingRequest({
    required String userId,
    required String adminId,
    required BuildContext context,
    int? page,
  }) = _CareGiverSendTrainingRequest;
}
