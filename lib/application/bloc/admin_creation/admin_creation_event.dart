part of 'admin_creation_bloc.dart';

@freezed
class AdminCreationEvent with _$AdminCreationEvent {
  const factory AdminCreationEvent.addAdmin({
    required String userId,
    required String roleId,
    required BuildContext context,
    required String firstName,
    required String lastName,
    required String email,
    required String mobile,
  }) = _AddAdmin;

  const factory AdminCreationEvent.getRoles({
    required String userId,
  }) = _GetRoles;

  const factory AdminCreationEvent.updateAdmin({
    required String userId,
    required String adminId,
    required String roleId,
    required BuildContext context,
    required String firstName,
    required String lastName,
    required String email,
    required String mobile,
  }) = _UpdateAdmin;

  const factory AdminCreationEvent.viewAdmin({
    required String userId,
    required String adminId,
  }) = _ViewAdmin;
  const factory AdminCreationEvent.dropDownErrorDisplay({
    required bool value,
  }) = _DropDownErrorDisplay;
  const factory AdminCreationEvent.setDropDownValue({
    required Role value,
  }) = _SetDropDownValue;
}
