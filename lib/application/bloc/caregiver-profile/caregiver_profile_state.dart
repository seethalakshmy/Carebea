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
  }) = _CareGiverProfileState;

  factory CareGiverProfileState.initial() {
    return const CareGiverProfileState(
        isLoading: true,
        isError: false,
        response: null,
        error: null,
        trainingVerifyResponse: null,
        interViewVerifyResponse: null);
  }
}
