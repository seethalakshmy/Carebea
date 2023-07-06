part of 'caregiver_creation_bloc.dart';

@freezed
class CaregiverCreationEvent with _$CaregiverCreationEvent {
  const factory CaregiverCreationEvent.createCaregiver(
      {required String firstName,
      required String lastName,
      required String email,
      required String mobileNo}) = _CreateCaregiver;
}
