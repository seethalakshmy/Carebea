part of 'caregiver_verification_bloc.dart';

@freezed
class CareGiverVerificationEvent with _$CareGiverVerificationEvent {
  const factory CareGiverVerificationEvent.getVerificationData(
      {required String userId}) = _GetVerificationData;

  const factory CareGiverVerificationEvent.isSelectedVerificationTab(
      VerificationTypes type) = _IsSelectedVerificationTab;

  const factory CareGiverVerificationEvent.isTappedReason(bool value) =
      _IsTappedReason;

  const factory CareGiverVerificationEvent.isTappedHHaReason(bool value) =
      _IsTappedHHaReason;

  const factory CareGiverVerificationEvent.isTappedBlsReason(bool value) =
      _IsTappedBlsReason;

  const factory CareGiverVerificationEvent.isTappedTbReason(bool value) =
      _IsTappedTbReason;

  const factory CareGiverVerificationEvent.isTappedCovidReason(bool value) =
      _IsTappedCovidReason;

  const factory CareGiverVerificationEvent.getCareGiverVerificationData({
    required String userId,
  }) = _GetCareGiverVerificationData;

  const factory CareGiverVerificationEvent.careGiverBackgroundVerify(
      {required String userID,
      required int status,
      required BuildContext context,
      String? rejectReason}) = _CareGiverBackgroundVerify;

  const factory CareGiverVerificationEvent.careGiverCertificateApprove(
      {required String userID,
      required int status,
      required String profileUrl,
      required String userName,
      required BuildContext context}) = _CareGiverCertificateApprove;

  const factory CareGiverVerificationEvent.careGiverCertificateReject(
      {required String userID,
      required RejectionParams params,
      required BuildContext context}) = _CareGiverCertificateReject;

  const factory CareGiverVerificationEvent.careGiverTrainingVerify({
    required String userId,
    required BuildContext context,
  }) = _CareGiverTrainingVerify;

  const factory CareGiverVerificationEvent.isWebViewLoading(bool value) =
      _IsWebViewLoading;
}
