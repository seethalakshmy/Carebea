part of 'caregiver_creation_bloc.dart';

@freezed
class CaregiverCreationState with _$CaregiverCreationState {
  const factory CaregiverCreationState() = _CaregiverCreationState;

  factory CaregiverCreationState.initial() {
    return const CaregiverCreationState();
  }
}
