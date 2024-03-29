part of 'caregiver_verification_bloc.dart';

@freezed
class CareGiverVerificationState with _$CareGiverVerificationState {
  const factory CareGiverVerificationState({
    required bool isLoading,
    required bool isError,
    required String? error,
    required int? selectedVerificationIndex,
    required List<VerificationTypes> verificationTypes,
    required CaregiverVerificationResponse? response,
    required VerifyResponse? backgroundVerifyResponse,
    required VerifyResponse? certificateVerifyApproveResponse,
    required CommonResponse? certificateVerifyRejectResponse,
    required VerifyResponse? sendTrainingResponse,
    required CommonResponseUse? notifyPendingDocumentResponse,
    @Default(false) bool isBackGroundVerificationReasonFieldTapped,
    @Default(false) bool isHHaReasonFieldTapped,
    @Default(false) bool isBlsReasonFieldTapped,
    @Default(false) bool isTBReasonFieldTapped,
    @Default(false) bool isCovidReasonFieldTapped,
  }) = _CareGiverVerificationState;

  factory CareGiverVerificationState.initial() {
    return const CareGiverVerificationState(
        isLoading: true,
        isError: false,
        error: null,
        verificationTypes: [],
        selectedVerificationIndex: 0,
        response: null,
        backgroundVerifyResponse: null,
        certificateVerifyApproveResponse: null,
        certificateVerifyRejectResponse: null,
        sendTrainingResponse: null,
        notifyPendingDocumentResponse: null);
  }
}
