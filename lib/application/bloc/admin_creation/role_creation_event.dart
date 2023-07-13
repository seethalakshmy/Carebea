part of 'role_creation_bloc.dart';

@freezed
class AdminCreationEvent with _$AdminCreationEvent {
  const factory AdminCreationEvent.addAdmin({
    required String? roleId,
    required BuildContext context,
    required String firstName,
    required String lastName,
    required String email,
    required String dob,
  }) = _AddAdmin;

  const factory AdminCreationEvent.getRoles({
    required String userId,
  }) = _GetRoles;

  const factory AdminCreationEvent.updateAdmin({
    required String userId,
    required String? roleId,
    required BuildContext context,
    required String firstName,
    required String lastName,
    required String email,
    required String dob,
  }) = _UpdateAdmin;

  const factory AdminCreationEvent.viewAdmin({
    required String userId,
  }) = _ViewAdmin;
}
