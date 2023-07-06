part of 'caregiver_creation_bloc.dart';

@freezed
class CaregiverCreationState with _$CaregiverCreationState {
  const factory CaregiverCreationState(
      {required bool isLoading,
      required bool isError,
      required Option<Either<ApiErrorHandler, CaregiverCreationResponse>>?
          failureOrSuccessOption,
      required String? error}) = _Initial;

  factory CaregiverCreationState.initial() {
    return const CaregiverCreationState(
        isLoading: false,
        isError: false,
        failureOrSuccessOption: None(),
        error: null);
  }
}
