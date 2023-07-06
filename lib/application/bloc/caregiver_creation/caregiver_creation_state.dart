part of 'caregiver_creation_bloc.dart';

@freezed
class CaregiverCreationState with _$CaregiverCreationState {
  const factory CaregiverCreationState(
      {required bool isLoading,
      required Option<Either<ApiErrorHandler, CaregiverCreationResponse>>
          failureOrSuccessOption}) = _Initial;

  factory CaregiverCreationState.initial() {
    return const CaregiverCreationState(
        isLoading: false, failureOrSuccessOption: None());
  }
}
