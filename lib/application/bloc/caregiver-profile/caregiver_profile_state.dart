part of 'caregiver_profile_bloc.dart';

@freezed
class CareGiverProfileState with _$CareGiverProfileState {
  const factory CareGiverProfileState({
    required bool isLoading,
    required bool isError,
    required CaregiverProfileResponse? response,
    required VerifyResponse? trainingVerifyResponse,
    required VerifyResponse? interViewVerifyResponse,
    required String? error,
    required VerifyResponse? sendTrainingResponse,
    int? status,
    @Default(false) bool isClientError,
    @Default(false) bool isAlreadyCalledInitialCall,
    @Default(false) bool isShowStatusDropDown,
    @Default(false) bool isLoadingStatusChangeApi,
    @Default([]) List<StatusList> statusList,
  }) = _CareGiverProfileState;

  factory CareGiverProfileState.initial() {
    return const CareGiverProfileState(
        isLoading: true,
        isError: false,
        response: null,
        error: null,
        sendTrainingResponse: null,
        trainingVerifyResponse: null,
        interViewVerifyResponse: null);
  }
}
